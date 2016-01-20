class IdeaController < ApplicationController
	def show
		@niche = Idea.order('rand()').limit(1).first.niche
	end
end
