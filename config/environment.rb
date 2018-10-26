require 'bundler'
require 'colorize'
require 'tty-spinner'
require 'colorize'

Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

# ActiveRecord::Base.logger = nil


ActiveRecord::Base.logger = nil
