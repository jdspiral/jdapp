class UserMailer < MandrillMailer::TemplateMailer
  default from: "jdspiral@gmail.com"

  def welcome_email(user)
  	mandrill_mail template: 'sign-up-notification',
  		subject: "Thanks for joining Mandrill API!",
  		to: {email: user.email, name: user.name},
	      important: true,
	      inline_css: true,
	      async: true
  end
end
