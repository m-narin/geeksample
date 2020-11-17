class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_tweets = Tweet.where(user_id: @user.id).where("created_at > ?", Time.current.yesterday)
  end
end
