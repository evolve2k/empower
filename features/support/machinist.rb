require 'machinist/active_record' # or your chosen adaptor
require 'spec/blueprints'
Before { Sham.reset } # to reset Sham's seed between scenarios so each run has same random sequences
