class AddUdEventFieldsToStayEvent < ActiveRecord::Migration
  def change
    add_column :stay_events, :did_urinate, :boolean
    add_column :stay_events, :did_defecate, :boolean
  end
end
