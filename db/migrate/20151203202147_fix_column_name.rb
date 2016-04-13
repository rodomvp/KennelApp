class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :patients, :NPO, :npo
  end
end
