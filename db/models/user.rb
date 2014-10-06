require 'sequel'
require 'colorize'

# -------- ONLY Change Above ------

puts "    User Model".yellow
puts "        " + __FILE__ if $V_SUBPATHS

class AppBase::Model::User < Sequel::Model

end

# -------- ONLY Change Below ------
