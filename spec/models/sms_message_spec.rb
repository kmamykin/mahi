require "spec"
require "spec_helper"

describe "Sms Message" do

  before(:each) do
    
    # below is an actual post parameters from testing on deployed server
    @sample_params = {
            "AccountSid"=>"AC07c95523d2581cd64b03b58419fe8dff",
            "SmsSid"=>"SM1588a4a8893f8756546c25149f1cfb2f",
            "SmsMessageSid"=>"SM1588a4a8893f8756546c25149f1cfb2f",
            "SmsStatus"=>"received",
            "From"=>"9176535246",
            "To"=>"4155992671",
            "Body"=>"test MSG",

            "FromCity"=>"NEW YORK",
            "FromState"=>"NY",
            "FromZip"=>"11235",
            "FromCountry"=>"US",
            "ToCity"=>"NOVATO",
            "ToState"=>"CA",
            "ToZip"=>"94949",
            "ToCountry"=>"US"
    }
    @user = Factory.create(:user, :phone_number => "9176535246")
  end

  it "should create from twilio POST" do

    message = SmsMessage.create_from_twilio_post(@sample_params)
    message.text.should == "test MSG"
    message.user.should == @user
  end
end