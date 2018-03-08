# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  image_id           :string
#  image_filename     :string
#  image_size         :integer
#  image_content_type :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :page
end
