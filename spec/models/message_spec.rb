require 'spec'

describe "Message" do
  before(:each) do
    @valid_attributes = {
      :text => "value for text"
    }
  end

  it "should create a new instance given valid attributes" do
    Message.create!(@valid_attributes)
  end
end
