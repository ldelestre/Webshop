class CartsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]
  before_action :set_item, only: [:destroy]
  before_action :authenticate_user!

  def cart
    @user = current_user
    @carts = Cart.all
  end

  def new
  end

  def create
    @user = current_user
    new_item = add_product(@user, params)
    @cart = Cart.new(user: new_item[:user], item: new_item[:item]) 

      if @cart.save
        redirect_to root_path
      else
        flash[:error] = 'There was a problem adding this item to your cart.'
        redirect_to @product
  end
end
  def destroy
    @user = current_user
    @cart = Cart.where(user: @user).where(item: @item)
    @cart.destroy_all
    redirect_to cart_path
  end

  private

  def set_item
    @item = Item.find(params[:format].to_i)
  end

  def item_params
    params.require(:item).permit(:id, :cart_id, :quantity)
  end

  def add_product(current_user, product_params)
      current_item = Item.find_by(id: product_params[:id])

      new_item = {user: current_user, item: current_item}
   end
end
