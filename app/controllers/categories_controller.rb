class CategoriesController < ApplicationController
	def create
		@category = Category.new category_params
		if @category.save
			respond_to do |format|
				format.js
			end
		end
	end


	private
		def category_params
  		params.require(:category).permit(:name)
  	end
end
