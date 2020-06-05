class ChangeNameUserToProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :user_id_id
    add_reference :profiles, :user, null: false, foreign_key: true
  end
end
