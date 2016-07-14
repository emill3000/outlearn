
class Outlearn::Activity 
  attr_accessor :name, :description, :location, :price, :length, :level, :url

  @@all = []

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.name_list
    doc = Nokogiri::HTML(open('https://www.outsoul.com/'))

    
    activities = doc.css('.activity-tile .h5')
    activities.collect{|activity| new(activity.text)}
  end

  def self.find(num)
    all[num-1]
  end

  def self.classes
    class_doc = Nokogiri::HTML(open('https://www.outsoul.com/activity/mountaineering'))
    #binding.pry
    descriptions = class_doc.css('.item-name bold-weight')
    descriptions.collect{|description| new(description.text)}
  end
  
     


  #def self.class_list
   # doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
    #classes = doc.css('.activity-tile .block').attribute('href')
  #end

end
  
