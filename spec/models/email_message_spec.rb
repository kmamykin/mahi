require "spec"
require "spec_helper"

describe "Email Message" do
  before (:each) do
    @user = Factory.create(:user, :login => "user1", :email => "user1@example.com")
    @params = {"html"=>"body in html\n",
               "text"=>"body in html\n",
               "from"=>"Firstname Lastname <user1@example.com>\n",
               "subject"=>"subject with attachment\n",
               "to"=>"somemailbox+#{@user.id}@mail.connectedgames.net\n",
               "attachments"=>"0"}
  end
  it "should create from sendgrid post" do
    message = EmailMessage.create_from_sendgrid_post(@params)
    message.text.should == "body in html"
    message.user.should == @user
  end

  describe "email parsing" do
    it "should parse embedded user id" do
      EmailMessage.user_id_from_email_address("abc+123@example.com").should == 123
    end
  end
end