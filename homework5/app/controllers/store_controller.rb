class StoreController < ApplicationController
  def index
  	 @products = Product.order(:title)
  	 @dateval = Time.now.strftime("%Y-%m-%d")
	   @timeval = Time.now.strftime("%H:%M:%S %p")

	 if session[:counter].nil?
		session[:counter] = 0
	else
		session[:counter] += 1;
	end

	if session[:counter] > 5
		@displayClass 	= "show"
	else
		@displayClass	= "hide"
	end

  end
end
