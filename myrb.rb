module Solutions
  class MyIRB
  # not the best practice to shove all of this into the init method
  # but this is a quick exercise and can be refactored into a more modular form
    def initialize
      # Some places to store our irb env information
      @history = []
      @line_num = 0
      @variable = {}
      @arr=[]
      while true
        print "#{@line_num} $ "
        command = gets.chomp
        case command
        when 'history' || 'h'
          puts "#{@history}"
        else
          begin
            if command.include?('=')
              arr = command.split('=')
              @variable[arr[0]]=arr[1]
              p eval (@variable[arr[0]])
            else
              if @variable[command] != nil
                p eval(@variable[command])
              else
                 
                p eval(command)
              end
            end
          rescue
            puts "Invalid Command"
          ensure
            # we only want to add the command to history when
            # it is not the history command
            @history << command
            @line_num += 1
          end
        end
      end
    end

    def get_binding(str)
      return binding
    end

    def self.run
      Solutions::MyIRB.new
    end

  end

end

Solutions::MyIRB.run