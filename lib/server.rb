require 'sinatra'
# -------- ONLY Change Above ------

class AppBase::Server < Sinatra::Application


end

puts "4: server.rb".red
puts "    " + __FILE__  if $V_SUBPATHS

# -------- ONLY Change Below ------
require_relative 'controllers/init.rb'