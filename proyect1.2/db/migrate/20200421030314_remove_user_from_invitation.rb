class RemoveUserFromInvitation < ActiveRecord::Migration[6.0]
  def change
    remove_column :invitations, :user_id
  end
end
