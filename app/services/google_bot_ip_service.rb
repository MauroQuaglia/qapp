require('httparty')

class GoogleBotIpService
  def self.call(url)
    result = []
    response = HTTParty.get(url)
    if response.success?
      JSON.parse(response.body).dig('prefixes').each do |prefix|
        result << GoogleBotIp.new(prefix['ipv4Prefix']).save
      end
    else
      result
    end
  rescue
    result
  end
end
