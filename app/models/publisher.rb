class Publisher < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, :language, :year, presence: true
end
