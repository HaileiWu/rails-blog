module CategoriesHelper
	def category_options
		categories = Category.all
		if categories.blank?
			[]
		else
			categories.map do |category|
				[category.name, category.name]
			end
		end
	end
end
