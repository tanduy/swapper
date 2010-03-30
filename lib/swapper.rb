require 'hpricot'
require 'open-uri'
require 'rss_item'
require 'site'
require 'vnexpress_site'
require 'dantri_site'
require 'vietnamnet_site'
require 'ngoisaonet_site'

class Swapper
  attr_reader :sites
  attr_accessor :sites

  def initialize
    @sites = Array.new
    sites.push(VnExpressSite.new)
    sites.push(DanTriSite.new)
    sites.push(VietNamNetSite.new)
    sites.push(NgoiSaoNetSite.new)
  end

  def getResources
    @sites.each do |site|
      site.getResource
    end
  end

end
