class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :tw_id
      t.float :trustscore
      t.string :category
      t.boolean :verified
      t.boolean :verdict
      t.string :tweet_url
      t.string :html_content
      t.string :data_posted
      t.string :tweet_username
      t.integer :likes_delta

      t.timestamps
    end
  end
end
