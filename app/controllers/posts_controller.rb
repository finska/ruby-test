class PostsController < ApplicationController
  def index
    @user_data = User.all
  end

  def show
    @userId = User.find(params[:id])
  end

  def new

  end

  def edit
    @userId = User.find(params[:format])
  end

  def update
    @userId = User.find(params[:format])
    if (@userId.update(post_params))
      redirect_to @userId
    else
      render 'edit'
    end
  end

  def create
    render plain: params[:post].inspect
  end

  def post_params
    params.require(:user).permit(:address, :city, :pupcode, :puptype, :pickuptime, :municipality, :labelname)
  end

end
