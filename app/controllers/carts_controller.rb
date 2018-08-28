class CartsController < ApplicationController
  def cart
  end

  def create
  	@cart = Cart.create(params[:user_id, user_id])
  end
end