class CreateBookRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :book_requests do |t|
      t.date :request_date
      t.binary :available
      t.date :nearest_available_date

      t.references :book, foreign_key: true
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
