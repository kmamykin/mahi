require 'spec_helper'

describe "/twilio/recv_sms" do
  before(:each) do
    render 'twilio/recv_sms'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/twilio/recv_sms])
  end
end
