class Outlearn::Classes
  attr_accessor :description, :location, :price, :length, :level, :url

  @@classes = []

  def initialize(description = nil, url = nil)
  	@description = description
  	@url = url
  	@@classes << self
  end

  def self.new_from_index_page(c)
  	self.new(
  		c.css('.item-name bold-weight').text,
  		"https://www.outsoul.com#{c.css(".a").attribute("href").text}"
  		)
  end

  def doc
  	@doc = Nokogiri::HTML(open(self.url))
  end

  def self.classes
    @@classes = new_from_index_page

  end

  def location
    @location = doc.css('.location p').text
  end

  def price
    @price = doc.css('.name-and-price .price').text
  end

  def self.find(num)
    classes[num-1]
  end
 
end

  