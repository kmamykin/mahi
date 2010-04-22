require 'spec_helper'

describe TwilioController do

  before(:all) do
    @all_possible_params = {
              "FromState"=>"NY",
              "ToState"=>"CA",
              "SmsMessageSid"=>"SM1588a4a8893f8756546c25149f1cfb2f",
              "AccountSid"=>"AC07c95523d2581cd64b03b58419fe8dff",
              "Body"=>"test MSG",
              "FromCity"=>"NEW YORK",
              "From"=>"9176535246",
              "SmsStatus"=>"received",
              "To"=>"4155992671",
              "FromCountry"=>"US",
              "FromZip"=>"11235",
              "ToCity"=>"NOVATO",
              "ToCountry"=>"US",
              "ToZip"=>"94949",
              "SmsSid"=>"SM1588a4a8893f8756546c25149f1cfb2f"}
  end

  describe "POST from twilio" do
    it "should receive a POST with parameters and reply with a redirect" do
      post 'sms', @all_possible_params
      assigns[:message].should == "Thank you for sms"
      response.should be_success
      response.should render_template("twilio/sms.xml.builder")
      response.content_type.should == 'application/xml'
    end
  end
end
