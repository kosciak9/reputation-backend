class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
    json_response(@tweets)
  end

  def create
    @tweet = Tweet.create(tweet_params)

    if @tweet.save
      json_response(@tweet, :created)
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    json_response(@tweet)
  end

  def new
    @tweet = Tweet.new
  end

  def edit
    @tweet = user.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      json_response(@tweet)
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end 

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
  end

end
