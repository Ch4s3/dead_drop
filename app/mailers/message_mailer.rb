class MessageMailer < ActionMailer::Base
  default from: "the_stump@deaddrop.com"

  def send_message_email(email, slug)
    @slug = slug 
    mail(to: email, subject: 'Some subject')
  end
end
