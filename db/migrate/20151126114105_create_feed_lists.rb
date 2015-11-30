class CreateFeedLists < ActiveRecord::Migration
  def change
    create_table :feed_lists do |t|

      t.timestamps null: false
    end
  end
end
