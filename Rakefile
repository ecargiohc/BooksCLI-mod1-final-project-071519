require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'runs the CLI'
task :run do
  CLI.run
end

desc 'starts a console'
task :console do
  Pry.start
end

desc 'See list of books from Google'
task :Google_books do 
  x = 1
  GoogleBooks.search(x)
end
