require 'bundler'
Bundler.require


ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3', 
    database: 'db/development.db'
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'

require_all 'bin'
require_all 'lib'

