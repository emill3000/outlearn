class Outlearn::Scraper 

  def index_page
    Nokogiri::HTML(open('https://www.outsoul.com/'))
  end

  def name_list
    self.index_page.css('.activity-tile .h5').collect{|activity| (activity.text)}
  end
  
  def activity
    self.index_page.css('.activity-tile .a')
  end

  def make_activity_url
    activity.each do |a|
      Outlearn::Activity.url_from_index(a)
    end
  end

end
  

