class AddRemarkToStayEvent < ActiveRecord::Migration
  def change
    add_column :stay_events, :remark, :text
  end
end
