# == Schema Information
#
# Table name: sliders
#
#  id         :integer          not null, primary key
#  url        :string
#  target     :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  page_id    :integer
#

class Slider < ApplicationRecord
  belongs_to :page, optional: true

  mount_uploader :image, SliderImageUploader
end
