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

  def write_strategy(strategy_class_name, request_url)
    Rails.cache.fetch(strategy_class_name, expires_in: 4.hours) do
      { strategy_name: strategy_class_name, request_url: request_url }
    end
  end

  def read_strategy(strategy_class_name)
    Rails.cache.read(strategy_class_name)
  end

end