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

require 'test_helper'

class SliderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
