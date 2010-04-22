class CreateBadges < ActiveRecord::Migration
  def self.up
    create_table :badges do |t|
      t.string  :name
      t.integer :threshold
      t.text    :sql
      t.text    :description
      t.timestamps
    end
    add_index :badges, :name, :unique => true
  end

  def self.down
    drop_table :badges
  end
end
