namespace :coffee do
  desc "Start a watcher process that compiles files in app/coffee/events to public/javascripts"
  task :autocompile do
    # TODO: This is bullshit, needs to do all folders in app/coffee, not just events
    fork { exec("coffee app/coffee/common/*.coffee -wc -o public/javascripts/common") }
    exec("coffee app/coffee/events/*.coffee -wc -o public/javascripts/events")
  end
end
