class AddFieldsToLocations < ActiveRecord::Migration
  def self.up
    create_table :locations, :force => true do |t|
      t.string :name
      t.timestamps
    end
    add_column :locations, :postcode, :string
    add_column :locations, :address, :string
    add_column :locations, :suburb, :string
    add_column :locations, :contact_name, :string
    add_column :locations, :contact_phone, :string
    add_column :locations, :contact_email, :string
    add_column :locations, :web_address, :string
  end

  def self.down
    drop_table :locations
    remove_column :locations, :postcode
    remove_column :locations, :web_address
    remove_column :locations, :contact_email
    remove_column :locations, :contact_phone
    remove_column :locations, :contact_name
    remove_column :locations, :suburb
    remove_column :locations, :address
  end
end
