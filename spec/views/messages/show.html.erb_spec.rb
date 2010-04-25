require 'spec_helper'

describe "/messages/show.html.erb" do
  include MessagesHelper
  before(:each) do
    assigns[:message] = @message = stub_model(Message,
      :text => "value for text"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ text/)
  end
end
