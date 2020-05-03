class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :username
      t.references :courses
      t.references :notes

      t.timestamps
    end
  end
end
