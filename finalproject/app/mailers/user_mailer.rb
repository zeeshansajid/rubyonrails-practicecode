class UserMailer < ApplicationMailer

  default from: 'zeeshan.smtp@gmail.com'

  def contactus_request(user)
    @user = user
    mail(to: "zeeshan.sajid@yahoo.com", subject: "Email from Blog User" ) do |format|
    format.html { render layout: 'email' }
  end
  end
end
  