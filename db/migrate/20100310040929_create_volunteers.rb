class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
