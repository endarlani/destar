class V1::UsersController < ApplicationController
	def index
		users = User.all
		render json: users, status: :ok
	end

	def create
		users = User.new(user_params)

		if users.save
			render json: users, status: :ok
		else
			render json: { errors: users.errors}, status: :unprocessable_entity
		end
	end

	def show
		users = User.find(params[:id])
		render json: users, status: :ok
	end

	def update
		users = User.find(params[:id])

		if users.update(user_params)
			render json: users, status: :ok
		else
			render json: { errors: users.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		users = User.find(params[:id])
		users.destroy
		head 204
	end

	private
	
	def user_params
		params.require(:user).permit(:name)
	end
end
