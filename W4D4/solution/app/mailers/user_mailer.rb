class UserMailer < ApplicationMailer
  default from: 'cat@site.com'

  def self.welcome_email(user)
    @user = user
    @url = 'http://google.com'
    ActionMailer::Base.mail(to: user.username, subject: 'Welcome to catsite.')
  end
end
