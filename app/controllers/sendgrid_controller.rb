class SendgridController < ApplicationController
  protect_from_forgery :except => [:receive_email]

  def receive_email
    #@params = params
    message = EmailMessage.create_from_sendgrid_post(params)
    # create email based on params here
    respond_to do |format|
      if request.post? && message.save # and email saves correctly
        # process email
        flash[:notice] = "Email processed"
        format.xml { render :xml => {:status => "Processed"}, :status => :created }
        format.html { render :text => "Processed" }
      else
        flash[:error] = "Oops! Error processing email"
        format.xml { render :xml => {:error => "Error"}, :status => :unprocessable_entity }
        format.html { render :text => "Error", :status => :unprocessable_entity }
      end
    end
  end
end
