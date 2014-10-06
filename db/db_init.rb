require 'sequel'
require 'colorize'
# -------- ONLY Change Above ------

module AppBase

  # AppBase.db
  def self.db
    @__db_adapter ||= Sequel.sqlite
  end

end

module AppBase::Model

end

AppBase.db
puts "2: db_init.rb".red
puts "    " + __FILE__ if $V_SUBPATHS

# -------- ONLY Change Below ------
puts "2.1: loading/creating tables".yellow
Dir[File.dirname(__FILE__) + '/tables/*.rb'].each {|file| require file }

puts "2.2: loading models".yellow
Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }
