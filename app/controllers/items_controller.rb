class ItemsController < ApplicationController
  def listing
  	@items = Item.all
  end
end
