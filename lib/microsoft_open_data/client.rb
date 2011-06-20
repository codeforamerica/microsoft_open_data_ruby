require 'microsoft_open_data/client'
require 'microsoft_open_data/client/connection'
require 'microsoft_open_data/client/request'

module MicrosoftOpenData
  class Client
    include MicrosoftOpenData::Client::Connection
    include MicrosoftOpenData::Client::Request
  end
end