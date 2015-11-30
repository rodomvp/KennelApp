class AddNpoToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :NPO, :boolean
  end
end
