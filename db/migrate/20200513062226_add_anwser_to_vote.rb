class AddAnwserToVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :answer, index: true, foreign_key: true
  end
end
