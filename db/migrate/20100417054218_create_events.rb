class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :creator_id
      t.integer :location_id, :null => false
      t.string :weather, :null => false    #['Beautiful', 'So hot!', 'Meh','Bit nippy', 'Needed an extra jumper', 'Monsoon']
      t.string :crowd_size, :null => false  #['Busy', 'Not Busy', 'Average']
      t.date :event_date, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
