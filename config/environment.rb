require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3', 
    database: 'db/development'
    )

ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'
