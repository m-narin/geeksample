class AddImpressionsCountToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :impressions_count, :integer, default: 0
  end
end
