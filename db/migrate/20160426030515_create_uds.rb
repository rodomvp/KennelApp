class CreateUds < ActiveRecord::Migration
  def change
    create_table :uds do |t|
      t.string :u1
      t.string :u2
      t.string :u3
      t.string :u4
      t.string :d1
      t.string :d2
      t.string :d3
      t.string :d4
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
