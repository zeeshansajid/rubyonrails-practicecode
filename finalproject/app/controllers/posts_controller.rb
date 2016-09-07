class PostsController < ApplicationController
  def index
    @page_name = "home"
  	@posts 		= Post.all
  	@categories = Category.all
  	@comments_count = Comment.all.count()
  	@views_count = User.all.count()
  end

  def show
  	@post 		= Post.find(params[:id])
  	@categories = Category.all
  	@comment 	= Comment.new
  	@comments 	= Comment.all
  end
end
