class RemoveBooleanFromRunn < ActiveRecord::Migration
  def change
    remove_column :runns, :boolean, :string
  end
end
