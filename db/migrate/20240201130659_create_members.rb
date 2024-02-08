class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :mobile_no
      t.boolean :active


      t.timestamps
    end
  end
end
