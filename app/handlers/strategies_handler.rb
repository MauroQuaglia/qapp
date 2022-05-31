module StrategiesHandler
  def call_strategies(strategies)
    strategies.each do |strategy_class|
      strategy = strategy_class.new(self)
      if strategy.applicable?
        strategy.execute
        break
      end
    end
  end
end