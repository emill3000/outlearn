
class Outlearn::Scraper 
  
  def self.index_page
    doc = Nokogiri::HTML(open('https://www.outsoul.com/activity/mountaineering')) 
    binding.pry 
  end

  def self.name_list
    index_page.css('.activity-tile .h5').collect{|activity| (activity.text)}
  end

  #def make_classes
   # name_list.each do |c|
    #  Outlearn::Classes. 

  #def self.class_list
   # doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
    #classes = doc.css('.activity-tile .block').attribute('href')
  #end

end
  
