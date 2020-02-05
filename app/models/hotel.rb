class Hotel < ApplicationRecord
  has_many :paragraphs
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true, numericality: {greater_than: 10}
end
