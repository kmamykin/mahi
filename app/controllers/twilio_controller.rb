class TwilioController < ApplicationController
  protect_from_forgery :except => :sms

  def sms
    @message = "Thank you for sms"
    render  :template => "twilio/sms.xml.builder", :type => :builder, :content_type => 'application/xml', :layout => false 
  end

end
