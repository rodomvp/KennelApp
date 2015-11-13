class CreateRunns < ActiveRecord::Migration
  def change
    create_table :runns do |t|
      t.string :ident
      t.string :size
      t.string :animal_type
      t.string :amenities

      t.timestamps null: false
    end
  end
end
