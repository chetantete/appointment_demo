class NotiFicationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.noti_fication_mailer.reminder_appointment.subject
  #
  def reminder_appointment(appointment)
    @paitent_name = User.find_by_id(appointment.paitents_id).name rescue nil
    @doctor_name = appointment.user.name rescue nil
    @date = appointment.appointment
    mail to: [appointment.user.email, User.find_by_id(appointment.paitents_id).email]
  end
end
