class StrategiesController < ApplicationController

  def index
    return bad_request if !strategy_name.present?

    @strategy = read_strategy(strategy_name)
    return not_found if !@strategy.present?

    render(layout: false)
  end

  private

  def strategy_name
    params[:strategy_name]
  end

end
