class ChartsController < ApplicationController

  def index
    @total = Author.all.count
    @daily = Author.group_by_day(:created_at, last: 3, format: '%d %B %Y').count
  end

end