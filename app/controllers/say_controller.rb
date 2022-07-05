class SayController < ApplicationController
  def hello
    @time = Time.now
  end

  def goodbye
    wrap { print "I hate elves! " }
    @future_time = 1.hour.from_now.localtime
    @files = Dir.glob('*')
  end

  def wrap &b
    print "Santa says: "
    3.times(&b)
    print "\n"
  end
  

  def goodnight(name)
    result 'Good night, ' + name
    return result 
  end
end
