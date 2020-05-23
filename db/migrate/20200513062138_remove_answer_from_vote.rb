class RemoveAnswerFromVote < ActiveRecord::Migration[6.0]
  def change
    remove_column :votes, :answer_id
  end
end
