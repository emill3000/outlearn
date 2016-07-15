class Outlearn::CLI


  def call
  	puts "Welcome to Outlearn."
    list
    class_list
  end

  def list
		Outlearn::Scraper.name_list.each.with_index(1) do |activity, i|
      puts "#{i}. #{activity}"
    end
    class_list
  end

  def class_list
    puts "choose a number"
    input = gets.strip.to_i
    activity = Outlearn::Classes.find(input)

    print_classes(activity)

    
   end

   def print_classes(activity)
    Outlearn::Classes.all.with_index(1) do |c, i|
      puts '#{i}. #{class.description}'
    end
  end
 end

