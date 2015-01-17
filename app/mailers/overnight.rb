class Overnight < ActionMailer::Base
  default from: "pleasedontreplyokay@gmail.com"

  def overnight_email(user)
    @user = user
    mail(to: "ihchen@pugetsound.edu", subject: 'A student would like to schedule an overnight')
  end
end
