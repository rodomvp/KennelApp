class RemoveFeedsPerDayFromPatient < ActiveRecord::Migration
  def change
    remove_column :patients, :feeds_per_day, :string
  end
end
