class AddColumnstoInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :invitations, :user, index: true
    add_reference :invitations, :event, index: true
    add_reference :invitations, :vote, index: true
  end
end
