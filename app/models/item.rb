class Item < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
	validates :image_url, presence: true
end