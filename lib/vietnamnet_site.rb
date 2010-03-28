class VietNamNetSite < Site

  def initialize
    super("http://vietnamnet.vn/rss/index.rss")
  end

  # From link in the RSS, must change into print version of page
  def getDownloadLink(link)
    link = link.strip
    return link.chop
  end

  # Get main content from body page
  def parser(body)
    # Get the content in the tag ID "content" 
    body = (body/"#content")
  end
end
