class RSSItem
  def title
    @title.inner_text
  end

  def description
    @description.inner_text
  end

  def link
    @link.inner_text
  end

  def update
    @update.inner_text
  end

  def initialize(item)
    @title = item.at("title")
    @description = item.at("description")
    @link = item.at("link")
    @update = item.at("update")
  end
  
  
end
