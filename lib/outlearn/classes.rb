class Outlearn::Classes
  attr_accessor :name, :location, :price, :url

  @@all = []
  
  


  def self.all
    @@all
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
