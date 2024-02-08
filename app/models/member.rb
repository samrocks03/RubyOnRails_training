class Member < ApplicationRecord

  after_validation -> { puts "Congratulations! registration successful !" }
  # after_commit :send_welcome_message

  has_one :fine_payment # one member has to pay a fine_payment
  has_many :book_requests
  has_many :book_issues

  validates :first_name, :last_name, :city, presence: true
  # validates :mobile_no, length: { is: 10 }, uniqueness: true, presence: true
  # validates :mobile_no, presence: true, uniqueness: true


  # private
  #   def send_welcome_message
  #     puts "\n\n Welcome, #{first_name}! Your registration was successful.\n\n"
  #   end
end
