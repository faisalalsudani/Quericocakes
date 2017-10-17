class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  def show
    @post = Post.find(params[:id])
  end



  def update
    @post.update_attributes(post_params)
  end

private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :picture)
  end
end
