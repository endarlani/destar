class V1::DetailUsersController < ApplicationController
	def index
	detail_users = DetailUser.all
    render json: { detail_users: detail_users }, status: :ok
	end
	
end
