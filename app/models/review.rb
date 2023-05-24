class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, allow_blank: false, inclusion: { in: 0..5 }, numericality: { only_integer: true}
end
