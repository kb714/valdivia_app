# == Schema Information
#
# Table name: pages
#
#  id               :integer          not null, primary key
#  background_color :string
#  content_right    :text
#  content_left     :text
#  animation_right  :boolean
#  animation_left   :boolean
#  weight           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner           :json
#  background_image :json
#  page_type        :string
#  name             :string
#

class Page < ApplicationRecord
  after_initialize :set_defaults

  mount_uploader :banner, BannerUploader
  mount_uploader :background_image, BackgroundImageUploader

  has_many :images
  has_many :sliders,inverse_of: :page, dependent: :destroy
  accepts_nested_attributes_for :sliders,
                                allow_destroy: true,
                                reject_if: proc { |att| att['image'].blank? }

  # validations
  validates :name, :presence => true
  validates :page_type, :presence => true

  def set_defaults
    self.weight  ||= 0
  end
end
