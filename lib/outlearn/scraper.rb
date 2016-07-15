
class Outlearn::Scraper 

  @@activities = []

  def self.activities
    @@activities
  end

  def self.index_page
    doc = Nokogiri::HTML(open('https://www.outsoul.com/')) 
    #binding.pry 
  end

  def self.name_list
   index_page.css('.activity-tile .h5').collect{|activity| (activity.text)}
  end

  def self.classes
    activity = name_list.each.with_index(1) do |activity, i|
      activities << activity
    end
  end

  def self.find(num)
    activities[num-1]
  end


  #def make_classes
   # name_list.each do |c|
    #  Outlearn::Classes. 

  #def self.class_list
   # doc = Nokogiri::HTML(open('https://www.outsoul.com/'))
    #classes = doc.css('.activity-tile .block').attribute('href')
  #end

end
  
