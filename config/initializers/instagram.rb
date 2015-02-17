require "instagram"

Instagram.configure do |config|
  config.client_id = ENV['INST_ID']
  config.access_token = ENV['INST_ACCESS_TOKEN']  
end