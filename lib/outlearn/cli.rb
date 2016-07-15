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
    activity = Outlearn::Scraper.find(input)

    description_list(activity)
  end

  def description_list(activity)
    Outlearn::Classes.new_from_index_page()
    
  
  end
 end

