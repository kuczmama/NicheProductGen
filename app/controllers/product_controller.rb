class ProductController < ApplicationController
	before_filter :authenticate
	def new
		@product = Product.new
	end
	def create
		flash[:success] = "Product created"
		@product = Product.new(product_params)
		# change status to answered
		@product.save
    	redirect_to new_product_path
	end

	private 
		def product_params
			params.require(:product).permit(:product)
		end

		def authenticate
    		authenticate_or_request_with_http_basic('Administration') do |username, password|
	    	username == 'admin' && password == 'password'
    	end
    end
end
