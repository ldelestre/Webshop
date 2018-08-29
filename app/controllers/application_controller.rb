class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
	before_action :set_cart

	private
		def set_cart
			@cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			@cart = Cart.create
			session[:cart_id] = @cart.id
		end
	before_action :sanitize_devise_params, if: :devise_controller?

		def sanitize_devise_params
			devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
		end

end
