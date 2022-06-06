require('httparty')

class GoogleBotIpService

  def self.call(url)
    result = GoogleBotIpRepository.new

    result.add(GoogleBotIp.new('8.8.8.8/34'))
    result.add(GoogleBotIp.new('9.8.8.8/14'))
    return result

    response = HTTParty.get(url)
    if response.success?
      JSON.parse(response.body).dig('prefixes').each do |prefix|
        result.add(GoogleBotIp.new(prefix['ipv4Prefix']))
      end
    end
    result
  rescue Exception => exc
    raise exc.message
    result
  end

end
