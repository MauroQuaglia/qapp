module StrategiesHandler

  def call_strategies(strategies)
    strategies.each do |strategy_class|
      strategy = strategy_class.new(self)
      if strategy.applicable?
        write_strategy(strategy_class.name, self.request.url)
        strategy.execute
        break
      end
    end
  end

  def write_strategy(strategy_name, request_url)
    Rails.cache.fetch(strategy_name.downcase, expires_in: 4.hours) do
      { strategy_name: strategy_name, request_url: request_url }
    end
  end

  def read_strategy(strategy_name)
    Rails.cache.read(strategy_name.downcase)
  end

end