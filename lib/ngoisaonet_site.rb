class NgoiSaoNetSite < Site

  def initialize
    super("http://ngoisao.net/rss/Lam-dep.rss", "ngoisao.net")
  end

  # From link in the RSS, must change into print version of page
  def getDownloadLink(link)
    link + "?q=1"
  end

  # Get main content from body page
  def parser(body)
    # Get the content in the tag ID "tdContainer" 
    body = (body/"#tdContainer")
  end
end