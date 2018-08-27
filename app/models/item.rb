class Item < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
	validates :image_url, presence: true
	has_and_belongs_to_many :carts
end