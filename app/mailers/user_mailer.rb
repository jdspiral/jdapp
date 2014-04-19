class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://peaceful-forest-3344.herokuapp.com/"
  	mail to: @user.email, subject: "Welcome!"
  end
end
