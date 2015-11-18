class AddTypeToStayEvent < ActiveRecord::Migration
  def change
    add_column :stay_events, :type, :string
  end
end
