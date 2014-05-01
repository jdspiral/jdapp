class UserMailer < MandrillMailer::TemplateMailer
  default from: "jdspiral@gmail.com"

  def welcome_email(user)
  	mandrill_mail template: 'sign-up-notification',
	subject: "Jdapp Can Has a Gift for You!",
	from_name: "Josh Hathcock",
	to: {email: user.email, name: user.name},
	headers: {reply_to: "josh@interactivesearchmarketing.com" },
    important: true,
    inline_css: true,
    async: true,
    track_clicks: true
  end
end
