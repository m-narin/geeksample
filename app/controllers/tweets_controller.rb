class TweetsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

    def top
    end
    
    def index
        @tweets = params[:tag_id].present? ? Tag.find(params[:tag_id]).tweets : Tweet.all
        @rank_tweets = Tweet.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
    end

    def new
        @tweet = Tweet.new
    end

    def create
        tweet = Tweet.new(tweet_params)
        tweet.user_id = current_user.id
        if tweet.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @tweet = Tweet.find(params[:id])
        impressionist(@tweet, nil, unique: [:ip_address]) 
        @comments = @tweet.comments
        @comment = Comment.new
    end

    def edit
        @tweet = Tweet.find(params[:id])
    end

    def update
        tweet = Tweet.find(params[:id])
        if tweet.update(tweet_params)
            redirect_to :action => "show", :id => @tweet.id
        else
            redirect_to :action => "new"
        end
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to action: :index
    end
    
    private
    def tweet_params
    params.require(:tweet).permit(:body, :image, :video, :star, tag_ids: [])
    end
    
end
