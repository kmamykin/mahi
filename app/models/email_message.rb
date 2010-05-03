class EmailMessage < Message

  def self.create_from_sendgrid_post(params)

    message = EmailMessage.new
    message.text = params["text"]
    message.text.strip!
    message.text.chomp
    user_id = user_id_from_email_address(params["to"])
    user = User.find_by_id(user_id)
    message.user = user
    message
  end

  def self.user_id_from_email_address(email_address)
    email_address.scan(/\w\+(\d+)@/)[0][0].to_i
  end
end