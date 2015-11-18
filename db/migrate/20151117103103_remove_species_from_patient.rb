class RemoveSpeciesFromPatient < ActiveRecord::Migration
  def change
    remove_column :patients, :species, :string
  end
end
