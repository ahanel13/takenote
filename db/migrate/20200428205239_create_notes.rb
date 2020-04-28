class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :topic
      t.string :title
      t.date :date_taken
      t.string :key_take_aways
      t.references :users, null: false, foreign_key: true
      t.references :courses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
