class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @dateval = Time.now.strftime("%Y-%m-%d")
  @timeval = Time.now.strftime("%H:%M:%S %p")

end
