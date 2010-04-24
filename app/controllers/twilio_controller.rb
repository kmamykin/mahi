class TwilioController < ApplicationController
  protect_from_forgery :except => [:sms, :receive_email]

  def sms
    @message = "Thank you for sms"
    render :template => "twilio/sms.xml.builder", :type => :builder, :content_type => 'application/xml', :layout => false
  end

  def emailme
    PatientMailer.deliver_send_mail()
    render :inline => true, :text => "Sent"
  end

  def receive_email
    #@params = params
    # create email based on params here
    respond_to do |format|
      if request.post? # and email saves correctly
        # process email
        flash[:notice] = "Email processed"
        format.xml { render :xml => {:element => "Element"}, :status => :created }
      else
        flash[:error] = "Oops! Error processing email"
        format.xml { render :xml => {:error => "Error"}, :status => :unprocessable_entity }
      end
    end
  end
end
