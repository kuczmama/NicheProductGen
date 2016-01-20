class ProductController < ApplicationController
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
end
