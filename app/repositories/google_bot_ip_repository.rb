class GoogleBotIpRepository

  def initialize
    @results = []
  end

  def add(ip)
    @results << ip
  end

  def all
    @results
  end

  def first
    @results.first
  end

  def last
    @results.last
  end

end