class Outlearn::CLI

  def call
  	start
    list
    describe
  end

  def start
  	puts "Welcome to Outlearn. How would you like to browse classes?"
    list
  end

  def list
  
    #while input != "1" || "2"
    
  	puts "Type 1 for a list of activities or 2 for a list of places or exit to quit."
      input = gets.strip
      case input
    	when "1"
    		Outlearn::Class.activity_list.each.with_index(1) do |activity, i|
          puts "#{i}. #{activity.name}"
          #describe
        end
    	when "2"
        Outlearn::Class.place_list.each.with_index(1) do |place, i|
    		  puts "#{i}. #{place.name}"
        end
      else
    		puts "I'm sorry. You can only choose 1 or 2. Please try again."
        #list 
    	end
    end
  #end

  def describe
    puts "choose a number"

  end

end