require 'spec_helper'

describe Badge do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:sql) }
  it { should validate_presence_of(:threshold) }
  it { Badge.make!; should validate_uniqueness_of(:name) }
  
  context 'when unsaved' do
    before do
      @badge = Badge.new
    end

    it "should not allow semicolon in SQL" do
      @badge.sql = 'some sql; some more sql'
      @badge.errors_on(:sql).should include('is invalid')
      @badge.sql = 'some sql'
      @badge.errors_on(:sql).should_not include('is invalid')
    end
  end
  
end
