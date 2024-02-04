class CreateLibraryStaffs < ActiveRecord::Migration[7.1]
  def change
    create_table :library_staffs do |t|
      t.text :name
      t.text :designation

      t.timestamps
    end
  end
end
