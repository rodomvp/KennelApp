class AddFeedsPerDayToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :feeds_per_day, :string
    add_column :patients, :int, :string
  end
end
