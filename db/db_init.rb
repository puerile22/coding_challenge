require 'sequel'
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
Dir[File.dirname(__FILE__)+"/tables/*.rb"].each {|file| require file}
Dir[File.dirname(__FILE__)+"/models/*.rb"].each {|file| require file}

# require_relative 'tables/game.rb'
# require_relative 'tables/machine_gun.rb'
# require_relative 'tables/panda.rb'
# require_relative 'tables/tournament.rb'
# require_relative 'tables/user.rb'
# require_relative 'models/game.rb'
# require_relative 'models/machine_gun.rb'
# require_relative 'models/panda.rb'
# require_relative 'models/tournament.rb'
# require_relative 'models/user.rb'


# TODO
