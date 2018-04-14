class V1::VillagesController < ApplicationController
	def index
		villages = Village.all
		render json: villages, status: :ok
	end

	def create
		villages = Village.new(village_params)

		if villages.save
			render json: villages, status: :ok
		else
			render json: { errors: villages.errors}, status: :unprocessable_entity
		end
	end

	def show
		villages = Village.find(params[:id])
		render json: villages, status: :ok
	end

	def update
		villages = Village.find(params[:id])

		if villages.update(village_params)
			render json: villages, status: :ok
		else
			render json: { errors: villages.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		villages = Village.find(params[:id])
		villages.destroy
		head 204
	end

	private
	
	def village_params
		params.require(:village).permit(:name)
	end
end
