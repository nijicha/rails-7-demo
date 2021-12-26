class CommentsController < ApplicationController
  before_action :set_post

  def create
    comment = @post.comments.create! comment_params
    CommentsMailer.submitted(comment).deliver_later
    redirect_to @post
  end

  private

  def comment_params
    params.required(:comment).permit(:content)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
