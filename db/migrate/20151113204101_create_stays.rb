class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.boolean :is_current
      t.datetime :check_in_dt
      t.datetime :check_out_dt
      t.datetime :sch_check_in_dt
      t.datetime :sch_check_out_dt
      t.references :patient, index: true, foreign_key: true
      t.references :runn, index: true, foreign_key: true
      t.text :remarks

      t.timestamps null: false
    end
  end
end
