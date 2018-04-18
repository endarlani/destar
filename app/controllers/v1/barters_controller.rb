class V1::BartersController < ApplicationController
	before_action :find_barter, only:[:show, :destroy]

	def index
		if params[:status] == "pending"
			barters = Barter.where(status: "pending")
		elsif params[:status] == "process"
			barters = Barter.where(status: "process")
		elsif params[:status] == "done"
			barters = Barter.where(status: "done")
		else
			barters = Barter.all
		end
			barters= barters.map{|val|
				{
					:id => val.id,
					:name => val.product_barter.name, 
					:picture => val.product_barter.picture,
					:description => val.product_barter.description,
					:user_product => val.product.user_id,
					:user_product_barter => val.product_barter.user_id,
				}
			}
		render json: barters, status: :ok
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
		render json: @barters, status: :ok
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
			params.require(:barter).permit(
			:name,
			:description, 
			:picture,
			:status
			)
	end

	def find_barter
		@barters = Barter.find(params[:id])
	end
end
