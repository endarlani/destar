class V1::ProductsController < ApplicationController
	load_and_authorize_resource
	before_action :find_product, only:[:show, :update, :destroy]
	
	def index
		if params[:status] == "pending"
			products = Product.where(status: "pending")
		elsif params[:status] == "decline"
			products = Product.where(status: "decline")
		elsif params[:status] == "active"
			products = Product.where(status: "active")
		elsif params[:status] == "nonactive"
			products = Product.where(status: "nonactive")
		elsif params[:price] == "asc"
			products = Product.order(highest_price: :asc)
		elsif params[:price] == "desc"
			products = Product.order(highest_price: :desc)
		elsif params[:date] == "desc"
			products = Product.order(created_at: :desc)
		else
			products = Product.all
		end

		products= products.map{|val|
				{
					:id => val.id,
					:picture => val.picture,
					:name => val.name, 
					:price => val.highest_price,
					:status => val.status,
					:village => val.village.name
				}
			}
		render json: products, status: :ok
	end

	def create
		products = Product.new(product_params)
			products.user_id = current_user.id
		if products.save
			render json: products, status: :created
		else
			render json: { errors: products.errors}, 
				   status: :unprocessable_entity
		end
	end

	def show
		render json: @products, 
			   include: :user, 
			   only: [:picture, :name, :description, :highest_price], 
			   status: :ok
	end

	def update
		if @products.update(product_params)
			render json: @products, status: :ok
		else
			render json: { errors: products.errors}, 
			status: :unprocessable_entity
		end
	end

	def destroy
		@products.destroy
		render json: {message: "Iklan Anda Sudah Dihapus"}
	end

	private

	def product_params
		params.require(:product).permit(
			:name,
			:user_id,
			:village_id,
			:product_type,
			:name,
			:lowest_price, 
			:highest_price, 
			:status, 
			:description, 
			:picture
			)
	end

	def find_product
		@products = Product.find(params[:id])
	end

end
