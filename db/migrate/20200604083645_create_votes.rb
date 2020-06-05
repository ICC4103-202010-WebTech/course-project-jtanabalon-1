class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :invitation_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
