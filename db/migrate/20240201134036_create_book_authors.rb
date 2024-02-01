class CreateBookAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :book_authors do |t|

      t.references :author, :book, foreign_key: true
      t.timestamps
    end
  end
end
