class CommentsController < ApplicationController
  before_action  :authenticate_user!
  def create
    @comment = current_user.comments.create(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path) 
    else
      redirect_back(fallback_location: root_path) 
    end
 
    @video = @comment.video
  end
  
  def destroy
    @comment = current_user.comments.find params[:id]
    @video = @comment.video
    if @comment.destroy
      redirect_back(fallback_location: root_path) 
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :video_id)
  end
end
