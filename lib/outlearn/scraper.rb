class Outlearn::Scraper 

  def index_page
    Nokogiri::HTML(open('https://www.outsoul.com/'))
  end

  def name_list
    self.index_page.css('.activity-tile .h5').collect{|activity| (activity.text)}
  end

  def make_classes(activity)
    
    self.index_page.css('.activity-tile .block').attribute('href').each do |a|
    	doc = Nokogiri::HTML(open('https://www.outsoul.com', "#{a}"))
    	doc.css('.item-name').text
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
  

