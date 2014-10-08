require 'colorize'
require 'pry-byebug'
# -------- ONLY Change Above ------

ARGV.include?("verbose") ? $V_SUBPATHS = TRUE : $V_SUBPATHS = FALSE

module AppBase

end

puts "0: app.rb".red
puts "    " + __FILE__ if $V_SUBPATHS

# -------- ONLY Change Below ------
# ENV Bootstrap

require_relative './initializers/env.rb'

# DB Bootstrap

require_relative './db/db_init.rb'
require_relative 'lib/helpers.rb'

# Server Bootstrap
require_relative 'lib/server.rb'


# Load Application
require_relative 'lib/routes.rb'