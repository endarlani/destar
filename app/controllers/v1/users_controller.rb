class V1::UsersController < ApplicationController
	load_and_authorize_resource

	def index
		users = User.all
		user = []
		users.each do |u|
			data = u.as_json(except: [:password_digest]).merge(village: u.village.as_json(only: [:id,:name]))
			user.push(data)
		end
		render json: user, status: :ok
	end

	def create
		user = User.new(user_params)
		if user.save
			render json: user, status: :created
		else
			render json: { error: user.errors}, status: :unprocessable_entity
		end
	end

	def show
		user = User.find(params[:id])
		user = user.as_json(except: [:password_digest]).merge(village: user.village.as_json(only: [:id,:name]))
		render json: user, status: :ok
	end

	def update
		users = User.find(params[:id])

		if users.update(user_params)
			render json: users, status: :ok
		else
			render json: { error: users.errors}, status: :unprocessable_entity
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
	
	def token
		decoded = JWT.decode(request.headers['Authorization'],  Rails.application.secrets.secret_key_base)[0]
		render json: User.find(decoded["user_id"])
	end

	private
	
	def user_params
		params.permit(:name,:role,:password,:phone,:gender,:picture,:village_id)
	end
end
