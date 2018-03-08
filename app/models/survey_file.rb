# == Schema Information
#
# Table name: survey_files
#
#  id         :integer          not null, primary key
#  survey_id  :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SurveyFile < ApplicationRecord
  belongs_to :survey
  mount_uploader :image, ImageUploader
end
