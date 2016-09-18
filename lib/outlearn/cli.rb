class Outlearn::CLI

  def call
    Outlearn::Scraper.new.make_classes
    start
  end

  def start
    puts "Welcome to Outlearn!"

		Outlearn::Scraper.new.name_list.each.with_index(1) do |activity, i|
      puts "#{i}. #{activity}"  
    end

    puts "Choose a number for more information about an activity."
    input = gets.strip
    activity = Outlearn::Classes.find(input.to_i)
    print_classes(activity)

  end


  def print_classes(activity)
    Outlearn::Classes.all.each.with_index(1) do |c, i|
      puts "#{i}. #{c.description}"
    end
  end

  

 end

