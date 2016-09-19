class Outlearn::CLI
  
  def call
    
    list

  end

  def list
    puts "Welcome to Outlearn!"

    Outlearn::Scraper.new.name_list.each.with_index(1) do |a, i|
      puts "#{i}. #{a}"  
    end

    puts "Choose a number for more information about an activity."
    input = gets.strip.to_i

    activity = Outlearn::Activity.find(input)

    puts "#{activity.name}"

    #activity = Outlearn::Activity.find(input.to_i)
   

    #list_classes(activity)


  end

  def list_classes(input)
    

    puts ""
    puts  "#{activity} Classes"
    
   
  end

 end


