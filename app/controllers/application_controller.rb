class ApplicationController < ActionController::Base
  include StrategiesHandler, ErrorsHandler
end
