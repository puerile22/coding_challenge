require 'sequel'
require 'colorize'
# -------- ONLY Change Above ------

puts "    Panda Model".yellow
puts "        " + __FILE__ if $V_SUBPATHS

class AppBase::Model::Panda < Sequel::Model

end

# -------- ONLY Change Below ------
