require_relative "spec_helper"

describe "Example Request Specs" do
  include Rack::Test::Methods

  def app
    Skeletor::Deployer.app
  end
  
  before(:all) do
    Skeletor::Deployer.setup(File.expand_path("../../", __FILE__), RACK_ENV)
  end
  
  context "routing" do
    
    it "should work for tags" do
      get "/tags", :api_version => "1.0"
      last_response.should be_ok
      last_response.body.should == "I AM 1.0"
    end
    
    it "should work for tags" do
      get "/widgets", :api_version => "1.0"
      last_response.should be_ok
      last_response.body.should == "I AM 1.0 - widgets"
    end
    
    it "should work for secrets" do
      get "/secrets", :api_version => "1.0"
      last_response.should be_ok
      last_response.body.should == "I AM stuff"
    end
    
    it "should not work for non existant api version" do
      get "/secrets", :api_version => "5.0"
      last_response.should_not be_ok
      last_response.body.should == "Not Found"
    end
    
  end
  
end
