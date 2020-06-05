class ChangeNameEventToVideo < ActiveRecord::Migration[6.0]
  def change
    remove_column :video_events, :event_id_id
    add_reference :video_events, :event, null: false, foreign_key: true
  end
end
