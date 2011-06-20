require 'helper'

describe MicrosoftOpenData::Client::Api do

  before do
    @client = MicrosoftOpenData::Client.new
  end
  
  describe ".catalog" do
    before do
      stub_get("").
        to_return(:status => 200, :body => fixture("container.xml"))
    end
    
    it "should return the correct item" do
      test = @client.catalog()
      a_get("").should have_been_made
      test.service.workspace.collection[0].href.should == "bls"
    end
  end
  
end
