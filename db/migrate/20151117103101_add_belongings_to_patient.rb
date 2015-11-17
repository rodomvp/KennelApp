class AddBelongingsToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :belongings, :string
  end
end
