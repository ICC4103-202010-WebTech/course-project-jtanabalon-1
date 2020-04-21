class AddEventToAnwser < ActiveRecord::Migration[6.0]
  def change
    add_reference :anwsers, :event, index: true, foreign_key: true
  end
end
