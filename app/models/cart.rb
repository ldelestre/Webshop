class Cart < ApplicationRecord
	belongs_to :items
  	belongs_to :user
end
