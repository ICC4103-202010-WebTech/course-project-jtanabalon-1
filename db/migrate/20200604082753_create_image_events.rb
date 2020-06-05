class CreateImageEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :image_events do |t|
      t.string :content
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
