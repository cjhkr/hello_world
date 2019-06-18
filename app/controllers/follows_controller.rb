class FollowsController < ApplicationController
    def create
    follow=Follow.create(followed_id:params[:id], follower_id:current_user.id)
    
    redirect_back(fallback_location: root_path)
    
    end
    
    def destroy
    follow=Follow.find_by(follower_id:current_user.id, followed_id:params[:id])
    follow.destroy
    redirect_back(fallback_location: root_path)
    end
end
