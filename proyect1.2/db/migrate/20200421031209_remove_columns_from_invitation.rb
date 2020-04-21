class RemoveColumnsFromInvitation < ActiveRecord::Migration[6.0]
  def change
    remove_column :invitations, :event_id
    remove_column :invitations, :vote_id
  end
end
