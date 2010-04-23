class PatientMailer < ActionMailer::Base

  def send_mail(sent_at = Time.now)
    recipients 'kmamyk@gmail.com'
    from       'noreply@mahi.com'
    sent_on    sent_at

    subject    'PatientMailer#send_mail'
    body       :greeting => 'Hi,dude!'
  end

end
