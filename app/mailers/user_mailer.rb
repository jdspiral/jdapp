class UserMailer < MandrillMailer::TemplateMailer
  default from: "jdspiral@gmail.com"

  def welcome_email(user)
  	mandrill_mail template: 'sign-up-notification',
	subject: "Jdapp Has a Gift for You!",
	from_name: "Josh Hathcock",
	to: {email: user.email, name: user.name},
	vars: { 
		'USER_NAME' => user.name
	},
    important: true,
    inline_css: true,
    async: true,
    track_clicks: true
  end
end
