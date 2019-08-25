class Review < ApplicationRecord
  belongs_to :movie

  validates :rating, presence: true, null: false, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
