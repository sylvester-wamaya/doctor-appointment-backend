class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show update destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

  # GET /doctors
  def index
    render json: Doctor.all, include: { users: { include: :appointments } }, status: :ok
  end

  # GET /doctors/1
  def show
    render json: @doctor, include: { users: { include: :appointments } }, status: :ok
  end

  # POST /doctors
  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created, location: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update!(doctor_params)
      render json: @doctor, status: :accepted
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  def destroy
    if @doctor.destroy
      render json: @doctor, status: :accepted
    else
      render json: @doctor.errors, status: :unprocessable_entity
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def doctor_params
    params.require(:doctor).permit(:name, :photo, :specialization, :consultation_fee, :prescription_fee)
  end

  # Error handling
  def record_not_found
    render json: { error: 'Doctor not found' }, status: :not_found
  end

  # Error handling
  def record_invalid
    render json: { error: 'Invalid doctor data' }, status: :unprocessable_entity
  end
end
