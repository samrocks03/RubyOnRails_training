class AddNoNullForBooks < ActiveRecord::Migration[7.1]
  def change
    change_column_null :books, :publisher_id, false

  end
end
