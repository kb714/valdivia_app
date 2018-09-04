# == Schema Information
#
# Table name: surveys
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  expiration  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  banner      :string
#  start_at    :datetime
#  deleted_at  :datetime
#

class Survey < ApplicationRecord
  mount_uploader :banner, BannerUploader
  # relations
  has_many :questions, dependent: :destroy
  has_many :data_stores, dependent: :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

  # validations
  validates :name, presence: true
end
