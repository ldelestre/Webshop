class User < ApplicationRecord
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
	has_one :cart
	has_many :orders
	has_many :items, through: :cart
end
