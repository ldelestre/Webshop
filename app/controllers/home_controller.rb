class HomeController < ApplicationController
  def index
  	@items = Item.all
  end
  def account
  end
  def single
  	@item = Item.find_by(id: params[:id])
  end

  def product
  	@items = Item.all
  end
end
