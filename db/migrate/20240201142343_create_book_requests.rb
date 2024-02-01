class CreateBookRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :book_requests do |t|
      t.date :request_date
      t.binary :available
      t.date :nearest_available_date

      t.references :book, :member
      t.timestamps
    end
  end
end
