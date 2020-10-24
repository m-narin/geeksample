class AddStarToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :star, :integer
  end
end
