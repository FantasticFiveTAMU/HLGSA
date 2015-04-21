class EventMailer < ActionMailer::Base
  default from: "saashlgsa@gmail.com"

	def welcome_mail(member)
		@member = member
		mail(to: @member.email, subject: 'Welcome to HLGSA')
	end
	
	def event_invite(mail_list, event)
		@event = event
		@mail_list = mail_list
		mail(to: @mail_list, subject: 'HLGSA Event')
	end
	
	def event_update(mail_list, event)
		@event = event
		@mail_list = mail_list
		mail(to: @mail_list, subject: 'HLGSA Event Update')
	end

end
