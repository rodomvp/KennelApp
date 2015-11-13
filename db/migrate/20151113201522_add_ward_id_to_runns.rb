class AddWardIdToRunns < ActiveRecord::Migration
  def change
    add_column :runns, :ward_id, :integer
    add_index  :runns, :ward_id
  end
end
