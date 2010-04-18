class AddAttachmentsPhotoToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :photo_file_name, :string
    add_column :volunteers, :photo_content_type, :string
    add_column :volunteers, :photo_file_size, :integer
    add_column :volunteers, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :volunteers, :photo_file_name
    remove_column :volunteers, :photo_content_type
    remove_column :volunteers, :photo_file_size
    remove_column :volunteers, :photo_updated_at
  end
end
