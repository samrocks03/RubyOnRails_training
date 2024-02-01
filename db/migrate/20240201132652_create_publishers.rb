class CreatePublishers < ActiveRecord::Migration[7.1]
  def change
    create_table :publishers do |t|
      t.text :name
      t.text :language
      t.integer :year


      t.timestamps
    end
  end
end
