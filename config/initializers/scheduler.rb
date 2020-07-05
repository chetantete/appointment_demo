require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '59m' do
  now = Time.now
  appointments = Appointment.where(appointment: now..(now + 1.hours))
  appointments.each do |appointment|
    NotiFicationMailer.reminder_appointment(appointment).deliver_later
  end
end