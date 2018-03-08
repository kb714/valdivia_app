# == Schema Information
#
# Table name: hours
#
#  id          :integer          not null, primary key
#  name        :string
#  phone       :string
#  email       :string
#  subject     :string
#  description :text
#  day         :date
#  hour        :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Hour < ApplicationRecord

  # validations
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :subject, presence: true
  validates :description, presence: true
end
