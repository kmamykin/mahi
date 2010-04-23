require 'test_helper'

class PatientMailerTest < ActionMailer::TestCase
  test "send_mail" do
    @expected.subject = 'PatientMailer#send_mail'
    @expected.body    = read_fixture('send_mail')
    @expected.date    = Time.now

    assert_equal @expected.encoded, PatientMailer.create_send_mail(@expected.date).encoded
  end

end
