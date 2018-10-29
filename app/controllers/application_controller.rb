class ApplicationController < ActionController::Base
	def new
		@article = article.new(params[:article])

		@article.save
		redirect_to @article
	end
	def create
		render plain: params[:article].inspect
	end
end



