class CreateAchievements < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.integer :badge_id, :volunteer_id
      t.timestamps
    end
    add_index :achievements, :volunteer_id
    add_index :achievements, [:badge_id, :volunteer_id], :unique => true
  end

  def self.down
    drop_table :achievements
  end
end
