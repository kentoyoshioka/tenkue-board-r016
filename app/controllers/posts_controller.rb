class PostsController < ApplicationController

  def index
    @posts = Post.all.includes(:user)
  end
  
  def edit
    @post = Post.find_by(id:params[:id])
  end
  
  def update
    if @post.update(post_params)
      redirect_to topic_path
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to topic_path
  end
  
  
  private
   def post_params
     params.require(:post).permit(:title, :content, :name)
   end
end