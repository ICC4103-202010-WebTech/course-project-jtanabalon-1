class AddInvitationToVotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :invitation, null: false, foreign_key: true
  end
end
