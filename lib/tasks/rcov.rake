# require 'cucumber/rake/task' #I have to add this
# require 'spec/rake/spectask'
# unless ARGV.any? {|a| a =~ /^gems/} # Don't load anything when running the gems:* tasks
# 
#   vendored_cucumber_bin = Dir["#{Rails.root}/vendor/{gems,plugins}/cucumber*/bin/cucumber"].first
#   $LOAD_PATH.unshift(File.dirname(vendored_cucumber_bin) + '/../lib') unless vendored_cucumber_bin.nil?
# 
#   namespace :rcov do
#     Cucumber::Rake::Task.new(:cucumber) do |t|
#       t.rcov = true
#       t.rcov_opts = %w{--rails --exclude osx\/objc,gems\/,spec\/,features\/ --aggregate coverage.data}
#       t.rcov_opts << %[-o "coverage"]
#     end
# 
#     Spec::Rake::SpecTask.new(:rspec) do |t|
#       t.spec_opts = ['--options', "\"#{RAILS_ROOT}/spec/spec.opts\""]
#       t.spec_files = FileList['spec/**/*_spec.rb']
#       t.rcov = true
#       t.rcov_opts = lambda do
#         IO.readlines("#{RAILS_ROOT}/spec/rcov.opts").map {|l| l.chomp.split " "}.flatten
#       end
#     end
# 
#     desc "Run both specs and features to generate aggregated coverage"
#     task :all do |t|
#       rm "coverage.data" if File.exist?("coverage.data")
#       Rake::Task["rcov:rspec"].invoke
#       Rake::Task["rcov:cucumber"].invoke
#     end
#   end
# end