class CartsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]
  before_action :set_item, only: [:destroy]

  def new
  end

  def create
    @cart.add_product(params)

      if @cart.save
        redirect_to cart_path
      else
        flash[:error] = 'There was a problem adding this item to your cart.'
        redirect_to @product
  end
end
  def destroy
    @item.destroy
    redirect_to cart_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:product_id, :cart_id, :quantity)
  end
end
