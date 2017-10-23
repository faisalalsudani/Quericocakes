class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if(@post.save)
      # redirect to somewhere
    else
      # render form again
    end

  end

  def edit
    # id in path to edit page
  end

  def update
    if(@post.update_attributes(post_params))
      # redirect to somewhere
    else
      # render form again
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to root_path, notice: "Article deleted"
    end
  end

private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :picture)
  end


end
