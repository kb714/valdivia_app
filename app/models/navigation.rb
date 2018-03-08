# == Schema Information
#
# Table name: navigations
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  target     :string
#  weight     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Navigation < ApplicationRecord
  after_initialize :set_defaults

  # validations
  validates :name, :presence => true
  validates :url, :presence => true

  def set_defaults
    self.weight  ||= 0
  end

end
