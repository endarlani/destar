class V1::ProductsController < ApplicationController
	# def index
	# 	products = Product.all
	# 	render json: products, status: :ok 
	# end


	def index
		
		list_product = Product.all.map{|val| 
			{
				:picture => val.picture,
				:nama => val.name, 
				:price => val.price,
				:category => val.category.name
			} 
		}
		# .select{|d| d[:rating] == 5}

		render json:  list_product, status: :ok
	end




	def show
		show_product = Product.all.map{|val| 
			{
				:id => val.id, 
				:picture => val.picture,
				:price => val.price,
				:rating => val.rating,
				:nama => val.name, 
				:info => val.info,				
				:category => val.category.name
			} 
		}
		

		render json:  show_product, status: :ok
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
		params.require(:product).permit(:name, :price, :picture, :date, :rating, :info, :category_id)
	end
end
