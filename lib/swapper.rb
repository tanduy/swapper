require 'hpricot'
require 'open-uri'
require 'site'
require 'vnexpress_site'
require 'dantri_site'
require 'rss_item'

class Swapper
  attr_reader :site
  attr_accessor :site

  def initialize(site)
    @site = site
  end

  def getResource
    @site.getResource
  end
end