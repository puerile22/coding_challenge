require 'sequel'
require 'colorize'
# -------- ONLY Change Above ------

puts "    Machine Gun Model".yellow
puts "        " + __FILE__ if $V_SUBPATHS

class AppBase::Model::Machine_Gun < Sequel::Model

end

# -------- ONLY Change Below ------
