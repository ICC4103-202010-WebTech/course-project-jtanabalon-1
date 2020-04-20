class CreateAnwsers < ActiveRecord::Migration[6.0]
  def change
    create_table :anwsers do |t|
      t.time :option

      t.timestamps
    end
  end
end
