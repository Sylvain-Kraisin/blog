class CommentsController < ApplicationController
  def index
    @posts = Post.all
    @comments = Comment.all
  end
  def show
  	@comment = Comment.find(params[:id])
  end
  def create
  	Comment.create author: params[:author], content: params[:content], post_id: params[:post_id]
  	redirect_to "/posts/#{params[:post_id]}"
  end
end
