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
