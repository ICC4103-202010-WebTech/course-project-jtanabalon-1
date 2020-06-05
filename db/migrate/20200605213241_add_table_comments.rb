class AddTableComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :messa
    end
    add_reference :comments, :user, null: false, foreign_key: true
    add_reference :comments, :event, null: false, foreign_key: true
  end
end
