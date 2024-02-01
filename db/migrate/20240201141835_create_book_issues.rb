class CreateBookIssues < ActiveRecord::Migration[7.1]
  def change
    create_table :book_issues do |t|
      t.date :issue_date
      t.date :return_date
      t.references :book, :member, :library_staff, foreign_key: true

      t.timestamps
    end
  end
end
