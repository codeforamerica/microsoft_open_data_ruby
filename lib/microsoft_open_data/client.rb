require 'broadband_map/client'
require 'broadband_map/client/connection'
require 'broadband_map/client/request'

module MicrosoftOpenData
  class Client
    include BroadbandMap::Client::Connection
    include BroadbandMap::Client::Request
  end
end