# This file is used by Rack-based servers to start the application.
# ru stands for "rackup"
#
require_relative "config/environment"

run(Rails.application)
#Rails.application.load_server sembra non servire
