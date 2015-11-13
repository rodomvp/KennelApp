class AddOwnerIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :owner_id, :integer
    add_index  :patients, :owner_id
  end
end
