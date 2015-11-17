class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.float :weight
      t.string :belongings

      t.timestamps null: false
    end
  end
end
