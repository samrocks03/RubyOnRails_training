class CreateFinePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :fine_payments do |t|
      t.date :fine_due_date
      t.date :payment_date
      t.integer :payment_amount

      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
