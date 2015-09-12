class AddOwnerIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :owner_id, :integer # adds the field
    add_index  :patients, :owner_id           # makes db searches faster
  end
end
