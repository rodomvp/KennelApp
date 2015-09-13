class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.float :weight
      t.string :species
      t.string :breed

      t.timestamps null: false
    end
  end
end
