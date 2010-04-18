namespace :db do
  # FIXME: uninitialized constant Spec::Example::ExampleGroup
  desc 'Makes 10 volunteers with photos from blueprints'
  task :make_volunteers => :environment do
    require 'spec/spec_helper'
    10.times { Volunteer.make(:with_photos) }
  end
end
