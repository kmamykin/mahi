require 'spec_helper'

describe TwilioController do

  describe "POST from twilio" do
    it "should receive a POST with parameters and reply with a redirect" do
      post 'sms', {:SmsSid => '11111111111111111111111111111111', :AccountSid => '2222222',
                   :From => '555-5555', :To => '333-3333', :Body => 'This is a message' }
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
