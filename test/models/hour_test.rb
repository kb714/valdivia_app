# == Schema Information
#
# Table name: hours
#
#  id          :integer          not null, primary key
#  name        :string
#  phone       :string
#  email       :string
#  subject     :string
#  description :text
#  day         :date
#  hour        :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class HourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
