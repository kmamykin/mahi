class TwilioController < ApplicationController
  def sms
    logger.info("Received SMS:" + params.to_s)
  end

end
