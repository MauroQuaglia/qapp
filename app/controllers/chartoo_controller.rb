class ChartooController < ApplicationController

  def index
    @total = Prova.count
    @daily = Prova.group_by_day(:created_at, last: 365, format: '%d %B %Y').count
    @monthly = Prova.group_by_month(:created_at, format: '%B%Y').count
  end

end