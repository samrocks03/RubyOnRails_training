class Publisher < ApplicationRecord
  has_many :books

  validates :name, :language, :year, presence: true
end
