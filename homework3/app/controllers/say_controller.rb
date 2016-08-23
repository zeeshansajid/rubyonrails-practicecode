class SayController < ApplicationController
  def hello
    @timenow = Time.now
    @files = Dir.glob('*')

  end

  def goodbye
  end
end
