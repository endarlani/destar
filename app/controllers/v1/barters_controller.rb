class V1::BartersController < ApplicationController
	def index
		barters = Barter.all
		render json:  barters, status: :ok
	end

	def create
		barters = Barter.new(barter_params)

		if barters.save
			render json: barters, status: :ok
		else
			render json: { errors: barters.errors}, status: :unprocessable_entity
		end
	end

	def show
		barters = Barter.find(params[:id])
		render json: barters, status: :ok
	end

	def update
		barters = Barter.find(params[:id])

		if barters.update(barter_params)
			render json: barters, status: :ok
		else
			render json: { errors: barters.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		barters = Barter.find(params[:id])
		barters.destroy
		head 204
	end

	private
	
	def barter_params
		params.require(:barter).permit(:name)
	end
end
