class Book < ApplicationRecord
  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors
  has_many :book_issues
  has_many :book_requests

  validates :title, :category_name, presence: true
end
