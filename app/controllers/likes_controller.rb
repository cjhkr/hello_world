class LikesController < ApplicationController
  def toggle
    
    like=Like.find_by(user_id:current_user.id, post_id:params[:id])
    if like.nil?
      like=Like.new
      like.user_id=current_user.id
      like.post_id=params[:id]
      like.save
      
      redirect_to '/'
    else
      like.destroy
      
      redirect_to '/'
    end
    
  end
end
