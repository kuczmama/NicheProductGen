class IdeaController < ApplicationController
	def show
		@niche = Niche.order('rand()').limit(1).first.niche
		@product = Product.order('rand()').limit(1).first.product
	end

end
