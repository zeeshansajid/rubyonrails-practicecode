class StoreController < ApplicationController
  def index
  	 @products = Product.order(:title)
  	 @dateval = Time.now.strftime("%Y-%m-%d")
	 @timeval = Time.now.strftime("%H:%M:%S %p")

  end
end
