class Cart < ApplicationRecord
	belongs_to :item
	belongs_to :user
	has_many :items

		def add_product(product_params)
			current_item = items.find_by(product_id: product_params[:product][:product_id])
			if current_item
				current_item.quantity += product_params[:product][:quantity].to_i
				current_item.save
			else
				new_item = items.create(product_id: product_params[:product][:product_id],
																								 quantity: product_params[:product][:quantity],
																							 	 cart_id: self.id)
		 end
		 new_item
	 end
 end
