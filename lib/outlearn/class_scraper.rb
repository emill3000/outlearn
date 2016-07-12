
class Outlearn::Class 
  attr_accessor :name, :location, :description, :price, :date

  def initialize(name = nil, location = nil)
    @name = name
    @location = location
  end
  
  def self.activity_list
    doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
    activities = doc.css('.activity-tile .h5')
    activities.collect{|activity| new(activity.text)}
  end

  def self.place_list
    doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
    places = doc.css('.area-tile .h5')
    places.collect{|place| new(place.text)}
  end	
end
  
