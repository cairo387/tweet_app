class LikesController < ApplicationController
  before_action :authenticate_user
  
  def create
    @like = Like.new
    @like.user_id = @current_user.id
    @like.post_id = params[:post_id]
    if @like.save
      redirect_to post_path(params[:post_id])
    end
  end
  
  def destroy
  end
  
end
