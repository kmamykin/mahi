class SmsMessage < Message

  #  Below is an example of post parameters
  #  "AccountSid"=>"AC07c95523d2581cd64b03b58419fe8dff",
  #  "SmsSid"=>"SM1588a4a8893f8756546c25149f1cfb2f",
  #  "SmsMessageSid"=>"SM1588a4a8893f8756546c25149f1cfb2f",
  #  "SmsStatus"=>"received",
  #  "From"=>"9176535246",
  #  "To"=>"4155992671",
  #  "Body"=>"test MSG",
  #
  #  "FromCity"=>"NEW YORK",
  #  "FromState"=>"NY",
  #  "FromZip"=>"11235",
  #  "FromCountry"=>"US",
  #  "ToCity"=>"NOVATO",
  #  "ToState"=>"CA",
  #  "ToZip"=>"94949",
  #  "ToCountry"=>"US"

  def self.create_from_twilio_post(params)
    sms = SmsMessage.new
    sms.text = params["Body"]
    user = User.find(:first, :conditions => {:phone_number => params["From"]})
    sms.user = user unless user.nil?
    sms
  end
end