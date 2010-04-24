class CreateRolesVolunteers < ActiveRecord::Migration
  def self.up
    create_table :roles_volunteers do |t|
      t.references :role
      t.references :volunteer
      t.timestamps
    end
  end

  def self.down
    drop_table :roles_volunteers
  end
end
