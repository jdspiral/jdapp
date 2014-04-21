class UserMailer < ActionMailer::Base
  default from: "jdspiral@gmail.com"

  def welcome_email(user)

  	@user = user

  	mail(to: @user.email, 
  	name: @user.name,
  	subject: "Thanks for joining Jdapp!",
  	bcc: "jdspiral@gmail.com")
  end
end
