class Article < ApplicationRecord
    has_many :paragraphs, dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true
    accepts_nested_attributes_for :paragraphs
    validates_associated :paragraphs
end
