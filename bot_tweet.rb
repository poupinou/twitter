require 'twitter'
#entrées utilisateur des cléfs
p "consumer_key stp ?"
twitter_consumer_key = gets.chomp
p "consumer_secret stp ?"
twitter_consumer_secret = gets.chomp
p "consumer_token stp ?"
twitter_consumer_token = gets.chomp
p "consumer_token_secret stp ?"
twitter_consumer_token_secret = gets.chomp
#enregistrement des cléfs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = twitter_consumer_key
  config.consumer_secret     = twitter_consumer_secret
  config.access_token        = twitter_consumer_token
  config.access_token_secret = twitter_consumer_token_secret
end
p client
#tweet
client.update("c'est juste ça un tweet?")