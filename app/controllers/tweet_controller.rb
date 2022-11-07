class TweetController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
    else
      render :new
    end
  end



  private

  def tweet_params
    params.require(:tweet).permit(:title,:nickname, :concept, :image)
  end



end