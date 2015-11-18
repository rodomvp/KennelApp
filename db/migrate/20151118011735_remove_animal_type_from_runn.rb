class RemoveAnimalTypeFromRunn < ActiveRecord::Migration
  def change
    remove_column :runns, :animal_type, :string
  end
end
