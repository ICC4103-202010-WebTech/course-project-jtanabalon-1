class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.boolean :accept
      t.references :user_id, null: false, foreign_key: true
      t.references :event_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
