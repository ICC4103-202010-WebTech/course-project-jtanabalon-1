class AddEventFromEventToAnswer < ActiveRecord::Migration[6.0]
  def change
    add_reference :answers, :event, index: true, foreign_key: true
  end
end
