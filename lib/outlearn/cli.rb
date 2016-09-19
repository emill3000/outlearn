class Outlearn::CLI
  
  def call
    Outlearn::Activity.new
    list

  end

  def list
    puts "Welcome to Outlearn!"

    Outlearn::Scraper.new.name_list.each.with_index(1) do |a, i|
      puts "#{i}. #{a}"  
    end

    puts "Choose a number for more information about an activity."
    input = gets.strip.to_i

    list_classes(input)

    #activity = Outlearn::Activity.find(input.to_i)
   

    list_classes(activity)


  end

  def list_classes(activity)
    Outlearn::Activity.all[activity]
    puts ""
    puts  "#{activity.name} Classes"
    
   
  end

 end


