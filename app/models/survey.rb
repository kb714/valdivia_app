class Survey < ApplicationRecord
  mount_uploader :banner, BannerUploader
  # relations
  has_many :questions, dependent: :destroy
  has_many :data_stores
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

  # validations
  validates :name, presence: true
end
