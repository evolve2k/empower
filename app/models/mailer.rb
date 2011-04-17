class Mailer < ActionMailer::Base

  def welcome(volunteer)
    recipients volunteer.email 
    bcc 
    from "Empowering"
    subject "Welcome to Empowering"  
    sent_on Time.now 
    body :volunteer => volunteer
  end

end
