import File.join(File.dirname(__FILE__), 'flaggdagar.rake')
require 'twitter'

# Load Twitter config from twitter.yml if it exists
# Otherwise it uses environment variables
# TWITTER_CONSUMER_KEY
# TWITTER_CONSUMER_SECRET
# TWITTER_OAUTH_TOKEN
# TWITTER_OAUTH_TOKEN_SECRET
twitter_config_file = File.join(File.dirname(__FILE__), 'twitter.yml')
if File.exists?(twitter_config_file)
  twitter_config = YAML::load(File.open(twitter_config_file))
  Twitter.configure do |config|
    config.consumer_key = twitter_config['twitter']['consumer_key']
    config.consumer_secret = twitter_config['twitter']['consumer_secret']
    config.oauth_token = twitter_config['twitter']['oauth_token']
    config.oauth_token_secret = twitter_config['twitter']['oauth_token_secret']
  end
end

# Log helper
def log(message)
  time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  File.open(File.join(File.dirname(__FILE__), 'flaggdagar.log'), 'a') { |f| f.write("[#{time}] #{message}\n") }
end