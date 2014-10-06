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


# DB Bootstrap
require_relative './db/db_init.rb'

# Server Bootstrap
require_relative 'lib/server.rb'

require_relative './initializers/env.rb'

# Load Application
