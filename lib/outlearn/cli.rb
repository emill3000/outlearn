class Outlearn::CLI

  def call
    Outlearn::Scraper.new.make_classes
    list

  end

  def list
    puts "Welcome to Outlearn!"

    Outlearn::Scraper.new.name_list.each.with_index(1) do |activity, i|
      puts "#{i}. #{activity}"  
    end

    puts "Choose a number for more information about an activity."
    input = gets.strip.to_i

    activity = Outlearn::Classes.find(input)

    print_classes(activity)

  end

  def print_classes(activity)
    Outlearn::Scraper.make_classes
    binding.pry

  end

 end


