class AddOccupiedToRunn < ActiveRecord::Migration
  def change
    add_column :runns, :occupied?, :string
    add_column :runns, :boolean, :string
  end
end
