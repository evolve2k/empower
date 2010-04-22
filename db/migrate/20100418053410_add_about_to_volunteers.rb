class AddAboutToVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :about, :text
  end

  def self.down
    remove_column :volunteers, :about
  end
end
