class ReportMailer < ApplicationMailer

def report_email(user)
    mail(to: user.email, subject: 'Your results from Vital')
  end
end

