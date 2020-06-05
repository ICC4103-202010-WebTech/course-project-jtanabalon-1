class ChangeNameColumnsToInvitations < ActiveRecord::Migration[6.0]
  def change
    remove_column :image_events, :event_id_id
    add_reference :image_events, :event, null: false, foreign_key: true
  end
end
