class UsersController < ApplicationController
  before_action :authenticate_member!, except: [:index, :show]

  def index
    @user = User.all
  end

  def new
    @user = current_member.users.build
  end

  def show
    @user1 = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = current_member.users.build(user_params)

    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :description, :email)
  end
end
