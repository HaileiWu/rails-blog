class ArticlesController < ApplicationController

	before_action :authenticate_admin!
	before_action :set_article, only: [:edit, :update, :show]

	def index
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new set_article_params
		if @article.save
			redirect_to @article
		end
	end

	def show
	end

	def edit
	end

	def update
		@article.update set_article_params
		redirect_to @article
	end

	private
  	def set_article
  		@article = Article.find params[:id]
  	end

  	def set_article_params
  		params.require(:article).permit(:title, :slug, :content)
  	end

end
