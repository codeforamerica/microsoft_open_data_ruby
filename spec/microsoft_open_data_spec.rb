# -*- encoding: utf-8 -*-
require 'helper'

describe MicrosoftOpenData do
  describe ".client" do
    it "should be a MicrosoftOpenData::Client" do
      BroadbandMap.client.should be_a MicrosoftOpenData::Client
    end
  end
end