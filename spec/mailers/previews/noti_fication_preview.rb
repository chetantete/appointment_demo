# Preview all emails at http://localhost:3000/rails/mailers/noti_fication
class NotiFicationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/noti_fication/reminder_appointment
  def reminder_appointment
    NotiFicationMailer.reminder_appointment
  end

end
