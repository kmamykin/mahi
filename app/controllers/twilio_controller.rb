class TwilioController < ApplicationController
  protect_from_forgery :except => [:sms]

  def sms
    sms_message = SmsMessage.create_from_twilio_post(params)
    if request.post? && sms_message.save
      @message = "Thank you for sms"
      render :template => "twilio/sms.xml.builder", :type => :builder, :content_type => 'application/xml', :layout => false
    else
      render :text => "Error occured", :status => :unprocessable_entity
    end
  end

end
