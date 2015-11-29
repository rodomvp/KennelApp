class AddFeedTimeToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :feed_time, :string
  end
end
