class BookRequest < ApplicationRecord
  belongs_to :book
  belongs_to :member

  validates :request_date, presence: true
end
