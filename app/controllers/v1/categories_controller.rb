class V1::CategoriesController < ApplicationController
	def index
		categories = Category.all
		render json: categories, status: :ok
	end

	def create
		categories = Category.new(category_params)

		if categories.save
			render json: categories, status: :ok
		else
			render json: { errors: categories.errors}, status: :unprocessable_entity
		end
	end

	def show
		categories = Category.find(params[:id])
		render json: categories, status: :ok
	end

	def update
		categories = Category.find(params[:id])

		if categories.update(category_params)
			render json: categories, status: :ok
		else
			render json: { errors: categories.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		categories = Category.find(params[:id])
		categories.destroy
		head 204
	end

	private
	
	def category_params
		params.require(:category).permit(:name)
	end
end
