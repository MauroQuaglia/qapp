module StrategiesHandler

  def call_strategies(strategies)
    strategies.each do |strategy_class|
      strategy = strategy_class.new(self)
      if strategy.applicable?
        tracker_write(self.class.name, self.request.url)
        strategy.execute
        break
      end
    end
  end

  def tracker_write(strategy_name, request_url)
    Rails.cache.fetch(strategy_name.downcase, expires_in: 4.hours) do
      { strategy_name: strategy_name, request_url: request_url }
    end
  end

  def tracker_read(strategy_name)
    Rails.cache.read(strategy_name.downcase)
  end

end