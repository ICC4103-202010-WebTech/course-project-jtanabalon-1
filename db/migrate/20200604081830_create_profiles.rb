class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :lastname
      t.string :picture
      t.text :bio
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
