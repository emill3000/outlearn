
class Outlearn::Scraper 

  #@@activities = []

  #def activities
    #@@activities
  #end

  def self.index_page
    doc = Nokogiri::HTML(open('https://www.outsoul.com/')) 
    #binding.pry 
  end

  def self.name_list
   index_page.css('.activity-tile .h5').collect{|activity| (activity.text)}
  end

  def self.class_index
    index_page.css('.activity-tile')
  end

  def self.make_classes
    class_index.each do |c|
      Outlearn::Classes.new_from_index_page(c)
    end
  end
  
  #def make_classes
   # name_list.each do |c|
    #  Outlearn::Classes. 

  #def self.class_list
   # doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
    #classes = doc.css('.activity-tile .block').attribute('href')
  #end

end
  
