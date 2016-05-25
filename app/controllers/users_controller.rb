class UsersController < ApplicationController

  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:notice] = "#{@user.name.capitalize} has been created!"
    else
      flash.now[:warning] = "No user has been created!"
    end
    render 'new'
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    render 'show'
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    # todo - looks like a particular workflow was in mind here but it was never finished
    # flash.now[:notice] = "#{user.name} was removed."

    redirect_to users_path
  end

  def new
    @user = User.new
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
