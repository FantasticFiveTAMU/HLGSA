class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :time
      t.string :location
      t.text :description
      t.string :invite

      t.timestamps
    end
  end
end
