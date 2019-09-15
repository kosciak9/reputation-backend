class OpinionsController < ApplicationController
  before_action :set_user
  before_action :set_tweet
 # before_action :set_user_opinion

  def index
    if @user
      json_response(@user.opinions)
    else
      json_response(@tweet.opinions)
    end
  end

  def create
    @opinion = @user.opinions.create(opinion_params)
  end

  def destroy
    @user = User.find(params[:user_id])
    @opinion = @user.opinions.find(params[:id])
    @opinion.destroy
  end

  private
  def set_user
    begin
      @user = User.find(params[:user_id])
    rescue
      @user = nil
    end
  end

  def set_tweet
    begin
      @tweet = Tweet.find(params[:tweet_id])
    rescue
      @tweet = nil
    end
  end
end
