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

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
