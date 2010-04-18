class AddRoleIdToVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :role_id, :integer
  end

  def self.down
    remove_column :volunteers, :role_id
  end
end
