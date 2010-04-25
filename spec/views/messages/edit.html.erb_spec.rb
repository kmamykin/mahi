require 'spec_helper'

describe "/messages/edit.html.erb" do
  include MessagesHelper

  before(:each) do
    assigns[:message] = @message = stub_model(Message,
      :new_record? => false,
      :text => "value for text"
    )
  end

  it "renders the edit message form" do
    render

    response.should have_tag("form[action=#{message_path(@message)}][method=post]") do
      with_tag('input#message_text[name=?]', "message[text]")
    end
  end
end
