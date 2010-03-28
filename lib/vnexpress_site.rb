class VnExpressSite < Site

  def initialize
    super("http://vnexpress.net/rss/gl/vi-tinh.rss", "vnexpress.net")
  end

  # From link in the RSS, must change into print version of page
  def getDownloadLink(link)
    link + "?q=1"
  end

  # Get main content from body page
  def parser(body)
    # Get the content in the tag ID "outter" 
    body = (body/"#outter")
    # Get the main content 
    body = (body/"/div")[1]
  end
end