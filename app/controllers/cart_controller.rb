class CartsController < ApplicationController


  before_action :set_cart, only: [:create][:destroy]
  before_action :set_cart_only, only: [:destroy]


  def create
    @cart.add_item(params)

    if @cart.save
      redirect_to cart_path
    else
      flash[:error] = 'there was a problem adding this item to your cart'
      redirect_to @item
    end


    def destroy
      @cart_item.destroy
      redirect_to_carts_path
    end

    private


    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end


    def cart_item_params
      params.require(:carts_item).permit(:item_id, :cart_id, :quantity)
    end

  end
