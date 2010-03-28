require 'base64'

class Site
  attr_reader :rssURL
  attr_accessor :rssURL

  def initialize(rssURL)
    @rssURL = rssURL
  end

  def getResource
    # Get the RSS content
    doc = open(@rssURL) do |f| 
      Hpricot.XML(f) 
    end
    # Each items in RSS content, get and parser page

    #rss = RSSItem.new(doc.search("item")[0])
    #body = getPage(getDownloadLink(rss.link))
    #body = parser(body)

    #p = Post.create( :title => rss.title.to_s, :name => "vnexpress.net", :content => body.to_s)
    #p.save

    doc.search("item").each do |item|
      rss = RSSItem.new(item)
      body = getPage(getDownloadLink(rss.link))
      body = parser(body)
      p = Post.create( :title => rss.title.to_s, :name => "vnexpress.net", :content => body.to_s)
      p.save
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