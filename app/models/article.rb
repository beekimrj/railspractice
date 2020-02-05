class Article < ApplicationRecord
    has_many :paragraphs, dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true
end
