class PostsController < ApplicationController

  def index
    @posts = Post.all.includes(:user)
  end
  
  def edit
　  super
  end
  
  def update
    super
  end
  
  def destroy
    super
  end
  
  
  private
   def post_params
     params.require(:post).permit(:title, :content, :name)
   end
end