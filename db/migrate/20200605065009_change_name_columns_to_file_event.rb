class ChangeNameColumnsToFileEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :file_events, :event_id_id
    add_reference :file_events, :event, null: false, foreign_key: true
  end
end
