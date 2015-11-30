class AddFeedListIdToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :feed_list_id, :integer
  end
end
