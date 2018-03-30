class V1::VillageUsersController < ApplicationController
	# before_action :authenticate_user

	def index
		village_users = VillageUser.all
    	render json: village_users, status: :ok
	end

	def show
		village_users = VillageUser.find(params[:id])
		render json: { village_users: village_users }, status: :ok
	end
	
end
