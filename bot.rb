require 'rubygems'
require 'twitter'

#!/usr/bin/env ruby

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "RLsXuDn3BsUY3HPyDt1INKYBj"
  config.consumer_secret     = "YOKkfhexLNb39PZ3nfqMDdCWlz4UHOxKz757Uj3QfvInhDuaYZ"
  config.access_token        = "18005113-IbaCfaHpcoiPx4jRKnWy1hXyujTTPGOWdDW8PkHxF"
  config.access_token_secret = "dw4ZrmmDu71Z13CILyMqB9urPMse7ZZTyBHNxrbq9Gc5j"
end



#client.update('Hello World! Again Tweeting from the command line :) ') // TWEETS FROM THE COMMAND LINE 


#client.search("#ruby").take(50).each do |tweet| // THIS MAKES A SEARCH 
  #puts tweet.text
#end

search_options = {
  result_type: "recent",
  geocode: "25.7906532288,-80.1300430298,10mi"
}

client.search("cuba", search_options).take(50).each do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text}"
end