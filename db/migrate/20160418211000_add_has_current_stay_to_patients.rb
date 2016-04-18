class AddHasCurrentStayToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :has_current_stay, :boolean
  end
end
