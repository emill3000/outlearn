class Outlearn::CLI
  
  def call
    list
    choose
  end

  def list
    puts "Welcome to Outlearn!"

    Outlearn::Scraper.new.name_list.each.with_index(1) do |a, i|
      puts "#{i}. #{a}"  
    end
  end

  def choose
    input = nil
    while input != "exit"
    Outlearn::Scraper.new.make_activities

    puts "Choose a number for a list of classes or type exit to quit."
    input = gets.strip.downcase

    if input.to_i >= 1 && input.to_i <= 5
      
      activity = Outlearn::Activity.find(input.to_i)

      list_classes(activity)

      class_info(cl)
    else 
      puts "Please choose a number from the list above."
    end
  end
      

  end

  def list_classes(activity)
    
    puts ""
    puts  "#{activity.name} Classes"
   
    activity.classes.each.with_index(1) do |c, i|
      puts "#{i}. #{c}"
    end
   
  end

 end


