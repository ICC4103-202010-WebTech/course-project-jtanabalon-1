class RemoveColumnAnwserToVote < ActiveRecord::Migration[6.0]
  def change
    remove_column :votes, :anwser_id
  end
end
