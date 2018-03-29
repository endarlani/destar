class V1::CategorysController < ApplicationController
	def index
		categorys = Category.all
		render json: categorys, status: :ok
	end

	def create
		categorys = Category.new(category_params)

		if categorys.save
			render json: categorys, status: :ok
		else
			render json: { errors: category.errors}, status: :unprocessable_entity
		end
	end

	def show
		categorys = Category.find(params[:id])
		render json: categorys, status: :ok
	end

	def update
		categorys = Category.find(params[:id])

		if categorys.update(category_params)
			render json: categorys, status: :ok
		else
			render json: { errors: categorys.errors}, status: :unprocessable_entity
		end
	end

	def destroy
		categorys = Category.find(params[:id])
		categorys.destroy
		head 204
	end

	private
	
	def category_params
		params.require(:category).permit(:name)
	end
end
