class CreateEventsMembers < ActiveRecord::Migration
  def up
  end

  def change
    create_table :events_members do |t|
      t.integer :event_id
      t.integer :member_id
    end
  end

  def down
  end
end
