class ReportMailer < ApplicationMailer

	def report_email(user)
		@nutrients = user.missing_nutrients
	    mail(to: user.email, subject: 'Your results from Vital')
	end

end

