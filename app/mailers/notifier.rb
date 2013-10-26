class Notifier < ActionMailer::Base
  default :from => "sclark@thetravlr.com"

  def send_signup_email(user)
  	@user = user
  	mail( :to => @user.email,
  		:subject => 'Welcome to The Travlr')
  end
end