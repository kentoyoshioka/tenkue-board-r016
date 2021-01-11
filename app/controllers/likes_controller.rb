class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:create, :destroy]

  def create
    post.likes.create!(user_id: current_user.id)
    redirect_to post_path(post)
  end

  def destroy
    like = post.likes.find_by!(user_id: current_user.id)
    like.destroy!
    redirect_to post_path(post)
  end

  private
  def set_post
    post = Post.find(params[:post_id])
  end
end