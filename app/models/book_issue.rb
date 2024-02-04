class BookIssue < ApplicationRecord
  belongs_to :book
  belongs_to :member
  belongs_to :library_staff

  validates :issue_date, :return_date, presence: true

end
