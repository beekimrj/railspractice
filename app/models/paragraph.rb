class Paragraph < ApplicationRecord
  belongs_to :article
  belongs_to :hotel
  validates :title, presence: true
  validates :body, presence: true
end
