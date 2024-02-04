class LibraryStaff < ApplicationRecord
  has_many :book_issues

  validates :name, :designation, presence: true
end
