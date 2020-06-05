class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.datetime :dat
      t.references :vote_id, foreign_key: true

      t.timestamps
    end
  end
end
