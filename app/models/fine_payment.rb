class FinePayment < ApplicationRecord
  # belongs_to :fine
  belongs_to :member # this fine belongs to this(which so ever member present) member_id


  validates :fine_due_date, :payment_date, :payment_amount, presence: true
  # validates :amount, presence: true
  # validates :amount, numericality: { greater_than: 0 }
  # validates :user_id, presence: true
  # validates :fine_id, presence: true
  # validate :amount_cannot_be_greater_than_fine_amount

  # def amount_cannot_be_greater_than_fine_amount
  #   if amount > fine.amount
  #     errors.add(:amount, "can't be greater than fine amount")
  #   end
  # end
end
