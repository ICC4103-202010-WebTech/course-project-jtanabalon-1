class ChangeNameColumnsToComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :answers, :vote_id_id
    add_reference :answers, :vote, null: false, foreign_key: true
  end
end
