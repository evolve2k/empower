require 'spec_helper'

describe Event do
  describe "table_columns" do
    it { should have_db_column(:name) }
    it { should have_db_column(:permalink) }
    it { should have_db_column(:location_id) }
    it { should have_db_column(:creator_id) }
    it { should have_db_column(:weather) }
    it { should have_db_column(:crowd_size) }
    it { should have_db_column(:event_date) }
  end

  describe "relationships" do
    it { should belong_to :location }
    it { should belong_to :volunteer }
  end

  describe "" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location_id) }
    it { should validate_presence_of(:creator_id) }
    it { should validate_presence_of(:event_date) }
  end
end
