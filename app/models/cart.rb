class Cart < ApplicationRecord
	belongs_to :items
	belongs_to :user

	def add_items (item_params)

		current_item = cart_items.find_by(item_id: item_params[:item][:item_id])

		if current_item
			current_item.quantity += item_params[:item][:quantity].to_i
			current_item.save
		else
			new_item = cart_items.create(item_id: item params[:item][:item_id],
				quantity: item_params[:item][:quantity],
				cart_id: self.id
			)
		end
		new_item
	end

end
