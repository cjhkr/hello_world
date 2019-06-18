class PostsController < ApplicationController
  before_action:authenticate_user!
  
  def index
    @posts=Post.all.reverse
  end

  def create
    post=Post.create(title:params[:title], content:params[:content], user_id:current_user.id)
    redirect_to '/'
  end

  def edit
    @post=Post.find_by(id:params[:id])
  end

  def update
    @post=Post.find_by(id:params[:id])
    @post.title=params[:title]
    @post.content=params[:content]
    @post.user_id=current_user.id
    @post.save
    
    redirect_to '/'
  end

  def destroy
    @post=Post.find_by(id:params[:id])
    @post.destroy
    
    redirect_to '/'
  end
  
  def comment_create
    @comment=Comment.create(content:params[:content], post_id:params[:id], user_id:current_user.id)
    
  end

  def profile
    @profile_user=User.find_by(id:params[:id])
    
  end

  def search
    @search=Post.search(params[:search])
  end
end
