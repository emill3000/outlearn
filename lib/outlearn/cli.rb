class Outlearn::CLI
  
  def call
    
    list

  end

  def list
    puts "Welcome to Outlearn!"

    Outlearn::Scraper.new.name_list.each.with_index(1) do |a, i|
      puts "#{i}. #{a}"  
    end
    
    Outlearn::Scraper.new.make_activities

    puts "Choose a number for a list of classes."
    input = gets.strip.to_i

    activity = Outlearn::Activity.find(input)

    list_classes(activity)

  end

  def list_classes(activity)
    
    puts ""
    puts  "#{activity.name} Classes"
   
    activity.classes.each.with_index(1) do |c, i|
      puts "#{i}. #{c}"
    end
   
  end

 end


