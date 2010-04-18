class FixPreferedNameSpellingInVolunteers < ActiveRecord::Migration
  def self.up
    rename_column :volunteers, :preffered_name, :prefered_name
  end

  def self.down
    rename_column :volunteers, :prefered_name, :preffered_name
  end
end
