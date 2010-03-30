class Site
  attr_reader :rssURL, :siteName
  attr_accessor :rssURL, :siteName

  def initialize
  end

  def getResource
    # Get the RSS content
    doc = open(@rssURL) do |f| 
      Hpricot.XML(f) 
    end

    # Each items in RSS content, get and parser page
    [doc.search("item")[0]].each do |item|
      begin
        rss = RSSItem.new(item)
        body = getPage(getDownloadLink(rss.link))
        body = parser(body)
        p = Post.create( :title => rss.title.to_s, :name => @siteName, :content => body.to_s)
        p.save
      rescue => e
        puts "URL error: " + getDownloadLink(rss.link)
      end
    end 
  end

  def parser(body)
    Rails("Subclass must override the method: parser")
  end

  def getDownloadLink(link)
    Rails("Subclass must override the method: getDownloadLink")
  end

  def getPage(url)
    doc = open(url) { |f| Hpricot(f) }
    doc.at("body")
  end

end
