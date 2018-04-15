class V1::UsersController < ApplicationController
	load_and_authorize_resource

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

	def login
		user = User.find_by(phone: params[:phone])
		if(user && user.authenticate(params[:password]))
			token =  JWT.encode({user_id: user.id}, Rails.application.secrets.secret_key_base)
			render json:  user.as_json(only: [:name]).merge(token: token), status: 200
		else 
			render status: 403, json: {status: "failed",error: "Wrong Password"}
		end
	end
	
	def auth_token
		decoded = JWT.decode(request.headers['Authorization'],  Rails.application.secrets.secret_key_base)[0]
		render json: User.find(decoded["user_id"])
	end

	private
	
	def user_params
		params.permit(:name,:role,:password,:phone,:gender,:picture,:village_id,:filter)
	end
end
