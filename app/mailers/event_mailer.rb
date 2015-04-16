class EventMailer < ActionMailer::Base
  default from: "saasbook@saasbook"

	def welcome_mail(member)
		@member = member
		mail(to: @member.email, subject: 'Welcome to My Awesome Site')
	end

end
