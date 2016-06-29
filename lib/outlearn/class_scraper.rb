class Outlearn::Class 

  def self.activities_list
  	activities = []
  	doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
  	doc.css('.activity-tile .h5').collect do |activity|
  		activities = activity.text
  	end	
  end

  def self.places_list
  	places = []
  	doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
  	doc.css()

end