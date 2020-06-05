class ChangeNameInvitationInVote < ActiveRecord::Migration[6.0]
  def change
    remove_column :votes, :invitation_id_id
  end
end
