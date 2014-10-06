require 'sequel'
require 'colorize'
# -------- ONLY Change Above ------

puts "    Tournament Model".yellow
puts "        " + __FILE__ if $V_SUBPATHS

class AppBase::Model::Tournament < Sequel::Model

end

# -------- ONLY Change Below ------
