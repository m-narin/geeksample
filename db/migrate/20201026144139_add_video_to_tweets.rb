class AddVideoToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :video, :string
  end
end
