class TweetsController < ApplicationController

  def index
    if params[:user_id]
      @tweets = Tweet.all.select do | tweet | 
        if tweet.subscribers?
          puts params[:user_id]
          tweet.subscribers.include? params[:user_id].to_i
        end
      end
    else
      @tweets = Tweet.all
    end
    json_response(@tweets)
  end

  def create
    @tweet = Tweet.create(@params)

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
    if @tweet.update(@params)
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
