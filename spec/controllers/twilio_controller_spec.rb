require 'spec_helper'

describe TwilioController do

  describe "POST from twilio" do
    it "should receive a POST with parameters and reply with a redirect" do
      post 'sms', {
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
      response.should be_success
    end
  end

  describe "GET 'recv_sms'" do
    it "should be successful" do
      get 'sms'
      response.should be_success
    end
  end
end
