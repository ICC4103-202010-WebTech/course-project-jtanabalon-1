class AddReferencesToInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :invitations, :user, null: false, foreign_key: true
    add_reference :invitations, :event, null: false, foreign_key: true
  end
end
