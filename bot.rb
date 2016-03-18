require 'rubygems'
require 'twitter'

#!/usr/bin/env ruby

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "XXX"
  config.consumer_secret     = "XXX"
  config.access_token        = "XXX"
  config.access_token_secret = "XXX"
end


# // TWEETS FROM THE COMMAND LINE
#client.update('Hello World! Again Tweeting from the command line :) ')


# // THIS MAKES A SEARCH 
#client.search("#ruby").take(50).each do |tweet|
  #puts tweet.text
#end


#// THIS MAKES A SEARCH WITH GEOCODE

# search_options = {
#   result_type: "recent",
#   geocode: "25.7906532288,-80.1300430298,10mi"
# }

# client.search("cuba", search_options).take(50).each do |tweet|
#   puts "#{tweet.user.screen_name}: #{tweet.text}"
# end


