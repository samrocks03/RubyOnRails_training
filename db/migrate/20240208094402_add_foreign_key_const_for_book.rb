class AddForeignKeyConstForBook < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :books, :publishers

    # add_foreign_key :books,:book_requests
    # add_foreign_key :members, :book_requests
  end
end
