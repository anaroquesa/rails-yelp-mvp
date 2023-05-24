class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, allow_blank: false
  validates :category, inclusion: %w[chinese italian japanese french belgian], allow_blank: false
  validates :address, presence: true, allow_blank: false
end
