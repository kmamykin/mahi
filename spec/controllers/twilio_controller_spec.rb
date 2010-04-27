require 'spec_helper'

describe TwilioController do

  before(:all) do
  end

  describe "POST from twilio" do
    it "should receive a POST with parameters and reply with a redirect" do
      sms_message = mock_model(SmsMessage)
      sms_message.should_receive(:save).once.and_return(true)
      SmsMessage.should_receive(:create_from_twilio_post).with(anything()).and_return(sms_message)
      post 'sms', @sample_params
      assigns[:message].should == "Thank you for sms"
      response.should be_success
      response.should render_template("twilio/sms.xml.builder")
      response.content_type.should == 'application/xml'
    end
  end
end
