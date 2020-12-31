class PostsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :show]

  def index

  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to :root #成功の場合
    else
      render 'new' #失敗の場合
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
