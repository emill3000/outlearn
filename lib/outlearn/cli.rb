class Outlearn::CLI
  
  def call
    list

  end

  def list
    puts "Welcome to Outlearn!"

    Outlearn::Scraper.new.name_list.each.with_index(1) do |activity, i|
      puts "#{i}. #{activity}"  
    end

    puts "Choose a number for more information about an activity."
    input = gets.strip.to_i

    activity = Outlearn::Activity.find(input)

    list_classes(activity)


  end

  def list_classes(activity)
    puts ""
    puts ""
    puts  "Classes"
    Outlearn::Activity.all.each.with_index(1) do |c, i|
      puts "#{i}. #{c}"
    end
  end

 end


