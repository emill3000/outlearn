class Outlearn::Scraper 

  def index_page
    Nokogiri::HTML(open('https://www.outsoul.com/'))
  end

  def name_list
    self.index_page.css('.activity-tile .h5').collect{|activity| (activity.text)}
  end
  
  #def activity
    #self.index_page.css('.activity-tile .a')
  #end

  def make_activities
    index_page.css('.activity-tile').each do |a|
      Outlearn::Activity.new_from_index(a)
    end
  end

end
  

