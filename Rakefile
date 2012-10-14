import File.join(File.dirname(__FILE__), 'flaggdagar.rake')
require 'twitter'

# Twitter config
twitter_config = YAML::load(File.open(File.join(File.dirname(__FILE__), 'twitter.yml')))
Twitter.configure do |config|
  config.consumer_key = twitter_config['twitter']['consumer_key']
  config.consumer_secret = twitter_config['twitter']['consumer_secret']
  config.oauth_token = twitter_config['twitter']['oauth_token']
  config.oauth_token_secret = twitter_config['twitter']['oauth_token_secret']
end

# Log helper
def log(message)
  time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  File.open(File.join(File.dirname(__FILE__), 'flaggdagar.log'), 'a') { |f| f.write("[#{time}] #{message}\n") }
end