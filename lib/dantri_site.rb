class DanTriSite < Site

  def initialize
    super("http://dantri.com.vn/trangchu.rss", "dantri.com.vn")
  end

  # From link in the RSS, must change into print version of page
  def getDownloadLink(link)
    url_items = link.split("/")
    id = url_items[url_items.length-2]
    "http://dantri.com.vn/Print-" + id.split("-")[1] + ".htm"
  end

  # Get main content from body page
  def parser(body)
    # Get the content in the tag ID "neo-maincontainer" 
    body = (body/"#neo-maincontainer")
  end
end