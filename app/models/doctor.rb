class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :specialization, presence: true, length: { minimum: 3, maximum: 50 }
  validates :consultation_fee, presence: true, numericality: { greater_than: 0 }
  validates :prescription_fee, presence: true, numericality: { greater_than: 0 }
end
