class UserMailer < ActionMailer::TemplateMailer
  default from: "jdspiral@gmail.com"

  def welcome_email(user)
  	
  	mandrill_mail template: 'sign-up-notification'
  	subject: "Thanks for signing up!"
  	to {email: user.email, name: user.name},
  	async: true
  end
end




#   	@user = user

#   	mail(to: @user.email, 
#   	name: @user.name,
#   	subject: "Welcome!"
#   	vars: {
#         'USER_NAME' => user.name,
#         'USER_EMAIL' => user.email
#       })
#   end
# end
