class OpinionsController < ApplicationController
  before_action :set_user
 # before_action :set_user_opinion

  def index
  #  @user = User.find(params[:user_id])
    json_response(@user.opinions)
  end

  def create
    @user = User.find(params[:user_id])
    @opinion - @user.opinions.create(opinion_params)
  end

  def destroy
    @user = User.find(params[:user_id])
    @opinion = @user.opinions.find(params[:id])
    @opinion.destroy
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

#  def set_user_opinion
 #   @opinion = @user.opinions.find_by!(id: params[:id]) if @user
#  end

  def comment_params
    params.require(:opinion).permit(:verdict, :reason, :result)
  end
                                  
end
