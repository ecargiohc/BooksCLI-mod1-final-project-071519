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

#enteracts with the CLI.file - method called self.author
desc 'runs an author'
task :author do 
  CLI.author
end 

desc 'runs option for a genre'
task :genre do 
  CLI.genre
end 

# desc 'google books'
# task :Google_books do 
#   Google_books.run
# end


