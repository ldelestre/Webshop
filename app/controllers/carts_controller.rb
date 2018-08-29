class CartsController < ApplicationController
  def cart
  end

  def create
 	Cart.create(params[:user_id, user_id])
  end
end