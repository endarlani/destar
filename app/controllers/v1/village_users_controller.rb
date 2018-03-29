class V1::VillageUsersController < ApplicationController
	def index
		village_users = VillageUser.all
    	render json: { village_users: village_users }, status: :ok
	end
	
end
