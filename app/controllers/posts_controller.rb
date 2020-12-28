class PostsController < ApplicationController

  def index
    @posts = Post.all.include?(:user)
  end
  
end