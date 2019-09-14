class UsersController < ApplicationController

  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.create(user_params)

    if @user.save
      json_response(@user, :created)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    json_response(@user)
  end

  def new
    @user = User.new
  end

  def edit
    @user = user.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      json_response(@user)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end 

  def destroy
    @user = User.find(params[id])
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:reputation_score, :name, :age, :password, :login, :email)
  end

                  
end
