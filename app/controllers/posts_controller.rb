class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show]

  def index

  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(post_params)
    render :new
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
