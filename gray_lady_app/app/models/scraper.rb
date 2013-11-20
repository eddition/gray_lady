class Scraper

  def initialize(url)
    @url = url
  end

  def get_href
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    array = doc.css("a")
    array.map do |a|
      a.get_attribute('href')
    end
  end

end
