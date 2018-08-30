class HomeController < ApplicationController
  def index
  	@items = Item.all
  end
  def account
    @orders = Order.all
  end
  def single
  	@item = Item.find_by(id: params[:id])
  end

  def product
  	@items = Item.all
  end
end
