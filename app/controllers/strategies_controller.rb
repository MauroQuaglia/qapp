class StrategiesController < ApplicationController

  def index
    @strategy = tracker_read(strategy_name)
    render(layout: false)
  end

  private

  def strategy_name
    params[:strategy_name]
  end

end
