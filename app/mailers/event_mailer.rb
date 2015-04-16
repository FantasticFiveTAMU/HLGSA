class EventMailer < ActionMailer::Base
  default from: "saashlgsa@gmail.com"

	def welcome_mail(member)
		@member = member
		mail(to: @member.email, subject: 'Welcome to My Awesome Site')
	end

end
