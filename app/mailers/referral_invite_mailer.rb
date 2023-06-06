class ReferralInviteMailer < ApplicationMailer
  def welcome_email(user_email)
    
    mail(to: user_email, subject: 'Welcome to My App')
  end
end
