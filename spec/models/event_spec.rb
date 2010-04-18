require 'spec_helper'

describe Event do
  describe "table_columns" do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:permalink).of_type(:string) }
    it { should have_db_column(:location_id).of_type(:integer) }
    it { should have_db_column(:creator_id).of_type(:integer) }
    it { should have_db_column(:weather).of_type(:string) }
    it { should have_db_column(:crowd_size).of_type(:string) }
    it { should have_db_column(:event_date).of_type(:date) }
  end

  describe "relationships" do
    it { should belong_to :location }
    it { should have_one :volunteer }
  end

  describe "" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:permalink) }
    it { should validate_presence_of(:location_id) }
    it { should validate_presence_of(:creator_id) }
    it { should validate_presence_of(:event_date) }
  end
end
