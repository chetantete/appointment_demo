class Appointment < ApplicationRecord
  belongs_to :user
  validate :appointment_check_hours

  def appointment_check_hours
    if Time.now + 5.hours > self.appointment
      errors.add(:expiration_date, "Please select Time after 5 hours")
    end
  end

end
