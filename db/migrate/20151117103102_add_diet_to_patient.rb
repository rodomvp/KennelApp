class AddDietToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :diet, :string
  end
end
