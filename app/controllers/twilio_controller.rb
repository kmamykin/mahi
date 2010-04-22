class TwilioController < ApplicationController
  protect_from_forgery :except => :sms

  def sms
    logger.info("Received SMS:" + params.to_s)
  end

end
