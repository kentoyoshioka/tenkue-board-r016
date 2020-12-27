class PostsController < ApplicationController

  def index
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
  
end