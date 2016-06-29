class Outlearn::Class 
  attr_accessor :name, :location, :description, :price, :date

  def initialize
    @name = name
    @location = location
  end
  

  def self.activity_list
 
  	doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
  	activities = doc.css('.activity-tile')
    activities.each do |activity| 
      puts activity.css('.h5').text
    end
  end

  def self.place_list
    doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
    places = doc.css('.area-tile')
    places.each do |place|
      puts place.css('.h5').text
  	end	
  end
  
end