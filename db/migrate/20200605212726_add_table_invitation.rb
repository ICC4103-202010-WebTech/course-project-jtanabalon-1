class AddTableInvitation < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.boolean :accept
    end
  end
end
