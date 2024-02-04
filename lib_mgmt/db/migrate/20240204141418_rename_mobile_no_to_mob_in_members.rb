class RenameMobileNoToMobInMembers < ActiveRecord::Migration[7.1]
  def change
    rename_column :members, :mobile_no, :mob
  end
end
