class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if find_role == "paitent"
      @doctors = User.with_role(:doctor)
   else
    @appointments = current_user.appointments
  end
  end

  def change_appointment_status
    appointment = Appointment.find_by_id(params[:id])
    render json: { status: appointment.update(status: params[:status]) }, status: :ok
  end

end
