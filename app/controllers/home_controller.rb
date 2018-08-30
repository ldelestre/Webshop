class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :single, :product, :services, :about, :contact]
  def index
  	@items = Item.all
  end
  def account
    @arr = []
    @orders = Order.where(user: current_user)
    @orders.each do |o|
      @arr << o.date
    end
    @arr.uniq
  end
  def single
  	@item = Item.find_by(id: params[:id])
  end

  def product
   	@items = Item.all
  end
end
