require 'helper'

describe MicrosoftOpenData::Client::Api do

  before do
    @client = MicrosoftOpenData::Client.new
  end
  
  describe ".catalog" do
    before do
      stub_get("").
        to_return(:status => 200, :body => fixture("container.xml"))
      stub_get("dc").
        to_return(:status => 200, :body => fixture("dc_services.xml"))
    end
    
    it "should return the correct item" do
      test = @client.catalog()
      a_get("").should have_been_made
      test.service.workspace.collection[0].href.should == "bls"
    end
    
    it "should return the correct item" do
      test = @client.catalog('dc')
      a_get("dc").should have_been_made
      test.service.workspace.collection[1].href.should == "BankLocations"
    end
  end
  
  describe ".query" do
    before do
      stub_get("dc/CrimeIncidents").
        to_return(:status => 200, :body => fixture("query.xml"))
    end
    
    it "should return the correct item" do
      test = @client.query('dc', 'CrimeIncidents')
      a_get("dc/CrimeIncidents").shoul have_been_made
      test.service.should == 1
    end
  end
  
end
