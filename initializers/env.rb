
# -------- ONLY Change Above ------
puts "1: Enviroment Init".red
puts "        " + __FILE__ if $V_SUBPATHS

AppBase::DB_ENV = 'development'
AppBase::DB_ADPTR = 'sqlite3'
# More init stuff


# -------- ONLY Change Below ------
