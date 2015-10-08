class PostsController < ApplicationController
  def index
  	@posts = Post.page(params[:page]).per(5)
  end
  def show
    @posts = Post.all
  	@post = Post.find(params[:id])
  end
  def create
    Post.create title: params[:title], content: params[:content]
    redirect_to "/posts"
  end
end
