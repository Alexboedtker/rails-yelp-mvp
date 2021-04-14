class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, length: { maximum: 1 }, numericality: { only_integer: true}
end
