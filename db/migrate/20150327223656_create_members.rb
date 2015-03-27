class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :uin
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :department
      t.string :designation
      t.boolean :paying

      t.timestamps
    end
  end
end
