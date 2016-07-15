class Outlearn::Classes
  attr_accessor :description, :location, :price, :length, :level, :url

  @@all = []

  def initialize(description = nil, location = nil, price = nil, url = nil)
  	@description = description
  	@location = location
  	@price = price
  	@url = url
  	@@all << self
  end

  def self.new_from_index_page(c)
  	self.new(
  		c.css('.item-name bold-weight').text,
  		c.css('.location p').text,
      c.css('.name-and-price .price').text,
  		
  		)
  end

  

  def doc
  	@doc = Nokogiri::HTML(open(self.url))
  end

  def self.all
    @@all
  end

 
end

  