class HomeController < ApplicationController

  def index
    GoogleBotIpService.call('https://www.gstatic.com/ipranges/goog.json')
  end

end
