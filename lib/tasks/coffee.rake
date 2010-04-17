namespace :coffee do
  desc "Compile app/coffee to public/javascripts"
  task :compile do
    # TODO: needs to do all folders in app/coffee, not just events
    exec("coffee app/coffee/events/*.coffee -c -o public/javascripts/events")
  end

  desc "Start a watcher process that compiles files in app/coffee/events to public/javascripts"
  task :autocompile do
    # TODO: needs to do all folders in app/coffee, not just events
    exec("coffee app/coffee/events/*.coffee -wc -o public/javascripts/events")
  end
end
