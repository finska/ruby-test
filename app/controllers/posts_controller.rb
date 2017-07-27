class PostsController < ApplicationController
  def index
    @user_data = User.all.take(50).reverse
  end

  def show
    @userId = User.find(params[:format])
  end

  def new

  end

  def edit
    @userId = User.find(params[:format])
  end

  def update
    @userId = User.find(params[:format])
    if (@userId.update_attributes(post_params))
      redirect_to '/', :notice => 'User was updated'
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(post_params)
    if (@user.save)
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:format]).destroy
    flash[:success] = 'User deleted'
    redirect_to '/'
  end

  def post_params
    params.permit(:address, :city, :pupcode, :puptype, :pickuptime, :municipality, :labelname)
  end

end
