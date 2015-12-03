class AddBelongingsToStay < ActiveRecord::Migration
  def change
    add_column :stays, :belongings, :text
  end
end
