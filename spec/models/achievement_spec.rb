require 'spec_helper'

describe Achievement do
  it { should belong_to(:badge) }
  it { should belong_to(:volunteer) }
end
