class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

 # param is missing or the value is empty: post
 # params.require(:post).permit(:title, :body)
  private
    def post_params
      params.permit(:title, :body)
    end
end
