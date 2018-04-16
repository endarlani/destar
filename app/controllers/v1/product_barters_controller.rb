class V1::ProductBartersController < ApplicationController
	def index
			product_barters = ProductBarter.all.map{|val|
				{
					:id => val.id,
					:picture => val.picture,
					:name => val.name,
					:description => val.description,
					:user => val.user.name
				}
			}
		render json:  product_barters, status: :ok
	end

	def create
		product_barters = ProductBarter.new(product_barter_params)

		if product_barters.save
			render json: product_barters, status: :ok
		else
			render json: { errors: product_barters.errors}, status: :unprocessable_entity
		end
	end

	def show
		product_barters = ProductBarter.find(params[:id])
		render json: product_barters, include: :user, only: [:picture, :name, :description], status: :ok
	end


	def update
		product_barters = ProductBarter.find(params[:id])

		if product_barters.update(product_barter_params)
			render json: product_barters, status: :ok
		else
			render json: { errors: product_barters.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		product_barters = ProductBarter.find(params[:id])
		product_barters.destroy
		head 204
	end

	private
	
	def product_barter_params
		params.require(:product_barter).permit(:name)
	end
end
