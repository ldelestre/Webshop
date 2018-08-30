class ChargesController < ApplicationController
	before_action :authenticate_user!, except: [:show]

	def new
		@user = current_user
		@cart = Cart.where(user: @user)
		# @date = Time.new
		@total_price = 24.0
		@cart.each do |c|
			@total_price += c.item.price
			# Order.create(user: @user, item: c.item, date: @date)
			# c.destroy_all
		end
	end

	def create
		@user = current_user
		@cart = Cart.where(user: @user)
		@date = Time.new
		@total_price = 24.0
		@cart.each do |c|
			@total_price += c.item.price
			Order.create(user: @user, item: c.item, date: @date)
			c.destroy
		end

	  # Amount in cents
	  puts "===================="
	  puts
	  puts
	  puts @user.email
	  puts
	  puts
	  puts "===================="
	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @total_price.to_i * 100,
	    :description => 'Order on Webshop-X',
	    :currency    => 'usd'
	  )
	  UserMailer.order_email(@amount, charge.currency, customer.email).deliver_now!
	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end
end
