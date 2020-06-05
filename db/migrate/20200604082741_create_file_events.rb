class CreateFileEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :file_events do |t|
      t.string :content
      t.references :event_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
