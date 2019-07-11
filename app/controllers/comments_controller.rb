class CommentsController < ApplicationController

	def create
  	clip = Clip.find(params[:clip_id])
    comment = current_user.comments.new(comment_params)
    comment.clip_id = clip.id
    comment.save
    redirect_to clip_path(clip.id)
  end

  def destroy
  	comment = Comment.find(params[:id])

    if user_signed_in?
      comment.destroy
       flash[:notice] = "削除しました"
       redirect_to clip_path(params[:clip_id])
    elsif admin_signed_in?
      comment.destroy
       flash[:notice] = "削除しました。"
       redirect_to admins_clip_path(params[:clip_id])
    end
  end

    private

  def comment_params
  	params.require(:comment).permit(:user_id,:clip_id,:body)
  end

	
end
	

	