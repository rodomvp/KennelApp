class CreateStayEvents < ActiveRecord::Migration
  def change
    create_table :stay_events do |t|
      t.references :stay, index: true, foreign_key: true
      t.datetime :scheduled_time_stamp
      t.datetime :actual_time_stamp

      t.timestamps null: false
    end
  end
end
