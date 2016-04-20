class RemoveAvatarFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :avatar, :string
  end
end
