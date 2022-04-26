class Debug::AliveController < ApplicationController
  def show
    render(plain: 'ok')
  end
end
