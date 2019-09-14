class UsersController < ApplicationController
  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.create!(user_params)
    json_response(@user,:created)
  end

  def show
    json_response(@user)
  end

  def update
    @user.update(todo_params)
    head :no_ontent
  end 

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

                  
end
