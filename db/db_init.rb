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
# TODO
require_relative 'models/game.rb'

# TODO
