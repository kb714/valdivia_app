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

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
