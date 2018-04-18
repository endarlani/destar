class V1::UsersController < ApplicationController
	load_and_authorize_resource

	def index
		users = User.all.paginate(:page => params[:page], :per_page => params[:per_page] || 10)
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
			user = user.as_json(except: [:password_digest]).merge(village: user.village.as_json(only: [:id,:name]))
			render json: user, status: :created
		else
			render json: {error: user.errors}, status: :unprocessable_entity
		end
	end

	def show
		user = User.find(params[:id])
		user = user.as_json(except: [:password_digest]).merge(village: user.village.as_json(only: [:id,:name]))
		render json: user, status: :ok
	end

	def update
		user = User.find(params[:id])
		if user.update(user_params)
			user = user.as_json(except: [:password_digest]).merge(village: user.village.as_json(only: [:id,:name]))
			render json: user, status: :ok
		else
			render json: {error: user.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
		head 204
	end

	def login
		user = User.find_by(phone: params[:phone])
		if(user && user.authenticate(params[:password]))
			token =  JWT.encode({user_id: user.id}, Rails.application.secrets.secret_key_base)
			render json:  user.as_json(only: [:name]).merge(token: token), status: 200
		elsif !user
			render json: {status: "not found", error: "User not found"}, status: 404
		else
			render json: {status: "failed", error: "Wrong password"}, status: 403
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
