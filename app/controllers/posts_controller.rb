class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show]

  def index

  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to :posts_path #成功の場合
    else
      render 'new' #失敗の場合
    end
  end

  def edit
    @posts = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), notice: '更新しました。'
    else
      flash.now[:error] = '更新できませんでした。'
      render :edit
    end
  end

  def destroy
    post = current_user.posts.find(params[:id])
    post.destroy!
    redirect_to root_path, notice: '掲示板を削除しました。'
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
