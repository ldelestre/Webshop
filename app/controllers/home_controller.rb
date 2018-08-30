class HomeController < ApplicationController
  def index
  	@items = Item.all
  end
  def account
  	
  end
end
