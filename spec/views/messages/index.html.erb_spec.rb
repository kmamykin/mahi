require 'spec_helper'

describe "/messages/index.html.erb" do
  include MessagesHelper

  before(:each) do
    assigns[:messages] = [
      stub_model(Message,
        :text => "value for text"
      ),
      stub_model(SmsMessage,
        :text => "value for text"
      )
    ]
    assigns[:user] = stub_model(User, :id => 123)
  end

  it "renders a list of messages" do
    render
    response.should have_tag("tr>td", "value for text".to_s, 2)
  end
end
