class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
  	@user = user

  	mail(to: @user.email, 
  	name: @user.name,
  	subject: "Welcome!")
  end
end
