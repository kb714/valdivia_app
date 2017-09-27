class Page < ApplicationRecord
  mount_uploader :banner, BannerUploader
  mount_uploader :background_image, BackgroundImageUploader
end
