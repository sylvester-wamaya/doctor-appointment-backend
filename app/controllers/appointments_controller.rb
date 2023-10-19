class AppointmentsController < ApplicationController
  def index
    render json: Appointment.all, include: { user: { include: :doctors } }
  end

  def show
    @appointment = Appointment.find(params[:id])
    render json: @appointment, include: { user: { include: :doctors } }
  end

  def create
    @appointment = Appointment.create(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def update
    @appointment = Appointment.find(params[:id])

    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find_by(id: params[:id])
    
    if @appointment
      @appointment.destroy
      render json: @appointment, status: :accepted
    else
      render json: { error: 'Appointment not found' }, status: :not_found
    end
  end
  
  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :user_id, :location, :date)
  end
end
