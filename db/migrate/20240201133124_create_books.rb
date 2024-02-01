class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.text :title
      t.text :category_name

      t.references :publisher, foreign_key: true
      t.timestamps
    end
  end
end
