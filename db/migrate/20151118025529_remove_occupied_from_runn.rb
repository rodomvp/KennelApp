class RemoveOccupiedFromRunn < ActiveRecord::Migration
  def change
    remove_column :runns, :occupied?, :string
  end
end
