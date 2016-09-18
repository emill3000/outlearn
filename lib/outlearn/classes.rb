class Outlearn::Classes
  attr_accessor :name, :location, :price, :url

  @@all = []
  
  


  def self.all
    @@all
  end

  def class_list(activity)
    doc = Nokogiri::HTML(open("https://www.outsoul""#{activity}.com"))
    doc.css('.item-name').text.each.with_index(1) do |c, i|
      puts "#{i}. #{c}"
    end
  end

  def name
    name = doc.css('')
  end

  def location
    location = doc.css('.location p').text
  end

  def price
    price = doc.css('.name-and-price .price').text
  end

  def self.find(num)
    self.all[num-1]
  end
 
end
