class SurveyFile < ApplicationRecord
  belongs_to :survey
  mount_uploader :image, ImageUploader
end
