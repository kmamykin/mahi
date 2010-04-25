class SendgridController < ApplicationController
  protect_from_forgery :except => [:receive_email]

  def receive_email
    #@params = params
    # create email based on params here
#    respond_to do |format|
#      if request.post? # and email saves correctly
#        # process email
#        flash[:notice] = "Email processed"
#        format.xml { render :xml => {:element => "Element"}, :status => :created }
#      else
#        flash[:error] = "Oops! Error processing email"
#        format.xml { render :xml => {:error => "Error"}, :status => :unprocessable_entity }
#      end
#    end
    render :text => "Processed"
  end
end
