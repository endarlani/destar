class V1::ServicesController < ApplicationController
	def index
		services = Service.all
    	render json: services, status: :ok
	end

	def create
		services = Service.new(service_params)

		if services.save
			render json: services, status: :created
		else
			render json: { errors: services.errors }, status: :unprocessable_entity
		end
	end

	def show
		services = Service.find(params[:id])
		render json: services, status: :ok
	end

	def update
		services = Service.find(params[:id])

		if services.update(service_params)
			render json: services, status: :ok
		else 
			render json: { errors: services.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		services = Service.find(params[:id])
		services.destroy
		head 204
	end

	private

	def service_params
		params.require(:service).permit(:name, :lowest_price, :highest_price, :info, :dete, :picture)
	end
	
end
