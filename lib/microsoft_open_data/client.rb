require 'microsoft_open_data/client'
require 'microsoft_open_data/client/connection'
require 'microsoft_open_data/client/request'
require 'microsoft_open_data/client/api'

module MicrosoftOpenData
  class Client
    include MicrosoftOpenData::Client::Connection
    include MicrosoftOpenData::Client::Request
    include MicrosoftOpenData::Client::Api    
  end
end