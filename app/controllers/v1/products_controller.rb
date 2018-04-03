class V1::ProductsController < ApplicationController
	# def index
	# 	products = Product.all
	# 	render json: products, status: :ok 
	# end


	def index
	if params[:price] == "asc"
		list_product = Product.all.order(price: :asc).map{|val| 
			{
				:picture => val.picture,
				:nama => val.name, 
				:price => val.price,
				:category => val.category.name
			} 
		}
	elsif params[:price] == "desc"
		list_product = Product.all.order(price: :desc).map{|val| 
			{
				:picture => val.picture,
				:nama => val.name, 
				:price => val.price,
				:category => val.category.name
			} 
		}
	elsif params[:date] == "desc"
		list_product = Product.all.order(price: :desc).map{|val| 
			{
				:picture => val.picture,
				:nama => val.name, 
				:price => val.price,
				:date => val.date,
				:category => val.category.name
			} 
		}
	else
		list_product = Product.all.map{|val| 
			{
				:picture => val.picture,
				:nama => val.name, 
				:price => val.price,
				:category => val.category.name
			} 
		}
	end

	render json: list_product, status: :ok
end



	def show
		show_product = Product.find(params[:id])
		render json: show_product, status: :ok
	end

	def create
		products = Product.new(product_params)

		if products.save
			render json: products, status: :created
		else
			render json: { errors: products.errors }, status: :unprocessable_entity
		end
	end


	def update
		products = Product.find(params[:id])

		if products.update(product_params)
			render json: products, status: :ok
		else
			render json: { errors: products.errors}, status: :unprocessable_entity
			render :edit
		end
	end

	def destroy
		products = Product.find(params[:id])
		products.destroy
		head 204
	end

	private

	def product_params
		params.require(:product).permit(:name, :price, :picture, :date, :rating, :info, :category_id, :category_name)
	end
end
