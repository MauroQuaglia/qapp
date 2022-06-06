class HomeController < ApplicationController

  def index
    @google_bot_ip_repository = GoogleBotIpService.call('https://www.gstatic.com/ipranges/goog.json')
  end

end
