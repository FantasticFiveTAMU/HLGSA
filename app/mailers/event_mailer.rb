class EventMailer < ActionMailer::Base
  default from: "saashlgsa@gmail.com"

	def welcome_mail(member)
		@member = member
		mail(to: @member.email, subject: 'Welcome to My Awesome Site')
	end
	
	def event_invite(mail_list)
		@mail_list = mail_list
		mail(to: @mail_list, subject: 'Welcome to New Event')
	end

end
