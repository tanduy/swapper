require 'hpricot'
require 'open-uri'
require 'rss_item'
require 'site'
require 'vnexpress_site'
require 'dantri_site'
require 'vietnamnet_site'
require 'ngoisaonet_site'

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