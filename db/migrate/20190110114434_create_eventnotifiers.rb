class CreateEventnotifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :eventnotifiers do |t|
      t.string :event_name
      t.string :event_subject
      t.string :event_company
      t.datetime :event_start
      t.datetime :event_end
      t.datetime :event_duration
      t.string :event_venue
      t.string :event_for
      t.string :event_chairman
      t.string :event_image
      t.string :event
      t.text :description
      t.string :event_sponser

      t.timestamps
    end
  end
end
