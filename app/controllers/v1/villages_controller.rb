class V1::VillagesController < ApplicationController
	def index
		village = Village.all
    	render json: { village: village }, status: :ok
	end
	
end
