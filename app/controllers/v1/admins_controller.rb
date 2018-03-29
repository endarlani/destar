class V1::AdminsController < ApplicationController
	def index
		admins = Admin.all
		render json: admins, status: :ok
	end

	def create
		admin = Admin.new(admin_params)

		if admin.save
			render json: admin, status: :created
		else
			render json: { errors: admin.errors }, status: :unprocessable_entity
		end
	end

	def show
		admin = Admin.find(params[:id])
		render json: admin, status: :ok		
	end

	def update
		admin = Admin.find(params[:id])

		if admin.update(admin_params)
			render json: admin, status: :ok
		else
			render json: { errors: admin.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		admin = Admin.find(params[:id])
		admin.destroy
		head 204
	end

	def login
		admins = Admin.find(params[:id])
		render json: admins, status: :ok
	end


	private
	def method_name
		
	end

	def admin_params
		params.require(:admin).permit(:username, :password_digest)
	end
end
