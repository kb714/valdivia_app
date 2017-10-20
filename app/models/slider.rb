class Slider < ApplicationRecord
  belongs_to :page, optional: true

  mount_uploader :image, SliderImageUploader
end
