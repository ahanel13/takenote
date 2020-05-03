class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :topic
      t.string :title
      t.date :date_taken
      t.string :key_takeaways
      t.references :users
      t.references :courses
      t.text :text

      t.timestamps
    end
  end
end
