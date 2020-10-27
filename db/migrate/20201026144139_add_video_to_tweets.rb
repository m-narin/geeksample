class AddVideoToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :audio, :string
  end
end
