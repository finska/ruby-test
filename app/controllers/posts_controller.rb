class PostsController < ApplicationController
  def index
    @user_data = User.all
  end

  def new

  end
  def create
    render plain: params[:post].inspect
  end
end
