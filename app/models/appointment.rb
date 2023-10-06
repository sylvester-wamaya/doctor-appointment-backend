class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user, through: :doctor
end
