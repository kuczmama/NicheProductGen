class NicheController < ApplicationController
	before_filter :authenticate
	def new
		@niche = Niche.new
	end
	def create
		flash[:success] = "Niche created"
		@niche = Niche.new(niche_params)
		# change status to answered
		@niche.save
    	redirect_to new_niche_path
	end

	private 
		def niche_params
			params.require(:niche).permit(:niche)
		end

	  	def authenticate
    		authenticate_or_request_with_http_basic('Administration') do |username, password|
	    	username == 'admin' && password == 'password'
    	end
    end
end
