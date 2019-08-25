class Movie < ApplicationRecord
  belongs_to :director

  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true, null: false
  validates :poster_url, presence: true, uniqueness: true
end
