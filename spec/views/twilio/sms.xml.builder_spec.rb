require 'spec_helper'

describe "/twilio/sms" do
  before(:each) do
  end

  it "should contain twilio xml response" do
    assigns[:message] = "sms text back"
    render 'twilio/sms.xml'
    response.should have_tag('Response')
    response.should have_tag('Sms', "sms text back")
  end
end
