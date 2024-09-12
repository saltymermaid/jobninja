class Role < ApplicationRecord
  belongs_to :employer

  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true, length: { maximum: 10_000 }
end
