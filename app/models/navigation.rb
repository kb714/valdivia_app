class Navigation < ApplicationRecord
  after_initialize :set_defaults

  # validations
  validates :name, :presence => true
  validates :url, :presence => true

  def set_defaults
    self.weight  ||= 0
  end

end
