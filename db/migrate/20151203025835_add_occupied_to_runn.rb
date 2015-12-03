class AddOccupiedToRunn < ActiveRecord::Migration
  def change
    add_column :runns, :occupied, :boolean
  end
end
