class Outlearn::CLI


  def call
  	puts "Welcome to Outlearn."
    list
    class_list
  end

  def list
		Outlearn::Activity.name_list.each.with_index(1) do |activity, i|
      puts "#{i}. #{activity.name}"
    end
    class_list
  end

  def class_list
    puts "choose a number"
    input = gets.strip.to_i
    activity = Outlearn::Activity.find(input)
    puts "#{activity.name}"

    Outlearn::Activity.classes.each.with_index(1) do |description, i|
      puts "#{i}. #{description.name}"
   end
 end

end