class AddClumnsonInvitations < ActiveRecord::Migration[6.0]
  def change
    add_reference :invitations, :vote, index: true, foreign_key: true
    add_reference :invitations, :event, index: true, foreign_key: true
  end
end
