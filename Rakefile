require_relative './config/environment'
require 'sinatra/activerecord/rake'

#interacts with CLI.file - method called self.run
desc 'runs the CLI'
task :run do
  CLI.run
end

desc 'starts a console'
task :console do
  Pry.start
end
