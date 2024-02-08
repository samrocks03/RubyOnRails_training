class AddForeignKeys < ActiveRecord::Migration[7.1]
  def change
    change_column_null :fine_payments, :fine_due_date, false
    change_column_null :fine_payments, :payment_amount, false
    change_column_null :fine_payments, :payment_date, false
    change_column_null :fine_payments, :member_id, false

    change_column_null :members, :first_name, false
    change_column_null :members, :last_name, false
    change_column_null :members, :city, false
    # change_column_null :members, :mobile_no, false
    change_column_null :members, :active, false

  end
end
