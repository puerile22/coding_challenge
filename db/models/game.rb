require 'sequel'
require 'colorize'
# -------- ONLY Change Above ------

puts "    Game Model".yellow
puts "        " + __FILE__ if $V_SUBPATHS

class AppBase::Model::Game < Sequel::Model

end

# -------- ONLY Change Below ------
