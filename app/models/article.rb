class Article < ApplicationRecord
  scope :available , -> { where("status = 'A'") }
  scope :unavailable , -> { where("status = 'D'") }

  def to_param
    self.slug
  end
end
