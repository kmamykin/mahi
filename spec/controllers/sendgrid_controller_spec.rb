require 'spec_helper'

describe SendgridController do
  def mock_message(stubs={})
    @mock_message ||= mock_model(EmailMessage, stubs)
  end

  describe "POST from sendgrid"  do
    it "should create new EmailMessage" do
      mock_message(:save => true)
      EmailMessage.should_receive(:create_from_sendgrid_post).with(anything()).and_return(mock_message)
      post :receive_email, {:value => "value"}
      response.should be_success
    end
  end

end
