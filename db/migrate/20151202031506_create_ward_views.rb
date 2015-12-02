class CreateWardViews < ActiveRecord::Migration
  def change
    create_table :ward_views do |t|

      t.timestamps null: false
    end
  end
end
