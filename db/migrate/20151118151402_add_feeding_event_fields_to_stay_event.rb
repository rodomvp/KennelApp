class AddFeedingEventFieldsToStayEvent < ActiveRecord::Migration
  def change
    add_column :stay_events, :did_eat, :bool
    add_column :stay_events, :food_description, :text
  end
end
