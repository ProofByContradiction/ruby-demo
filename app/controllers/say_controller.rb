class SayController < ApplicationController
  def hello
    @time = Time.now
  end

  def goodbye
    @future_time = 1.hour.from_now.localtime
    @files = Dir.glob('*')
  end
end
