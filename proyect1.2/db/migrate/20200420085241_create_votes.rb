class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :anwsered
      t.references :anwser, null: true, foreign_key: false

      t.timestamps
    end
  end
end
