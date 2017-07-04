class Hour < ApplicationRecord

  # validations
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :subject, presence: true
  validates :description, presence: true
end
