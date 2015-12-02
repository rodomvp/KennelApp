class AddWardIdToWardView < ActiveRecord::Migration
  def change
    add_column :ward_views, :ward_id, :integer
  end
end
