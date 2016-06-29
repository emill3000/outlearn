class Outlearn::CLI

  def call
  	start
    list

  end

  def start
  	puts "Welcome to Outlearn. How would you like to browse classes?"
  end

  def list
  	puts "Type 1 for a list of activities or 2 for a list of places."
  	input = gets.strip
  	if input == "1"
  		puts "What do you want to do?"
  	elsif input == "2"
  		puts "places"
  	elsif 
  		puts "I'm sorry. You can only choose 1 or 2. Please try again."
  	end
  end

end