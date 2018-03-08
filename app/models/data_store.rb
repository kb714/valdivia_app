# == Schema Information
#
# Table name: data_stores
#
#  id         :integer          not null, primary key
#  survey_id  :integer
#  surveys    :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DataStore < ApplicationRecord
  belongs_to :survey
end
