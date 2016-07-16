class Outlearn::CLI


  def call
    Outlearn::Scraper.new.make_classes
  	puts "Welcome to Outlearn."
    start
  end

  def start

		Outlearn::Scraper.name_list.each.with_index(1) do |activity, i|
      puts "#{i}. #{activity}"
      
    end
    class_list
  end

  def class_list
    puts "choose a number"
    input = gets.strip.to_i
    activity = Outlearn::Scraper.find(input)
    
    print_classes(activity)
  end

  def print_classes(activity)
    Outlearn::Scraper..each.with_index(1) do |c, i|
      puts "#{i}. #{c.description}"
    end
  end

 end

