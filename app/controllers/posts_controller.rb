class PostsController < ApplicationController


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

  end

  def update

  end

private

  def post_params
    params.require(:post).permit(:title, :content, :picture)
  end


end
