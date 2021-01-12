class CommentsController < ApplicationController
  def create
    # @post = Post.find(params[:post_id])
    # @comments = @post.comments.order(created_at: :desc)
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      flash[:notice] = "コメントを投稿しました。"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "コメントを(140文字以内で)入力してください。"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end
end
