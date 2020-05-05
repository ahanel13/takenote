class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :dept
      t.integer :course_number
      t.string :name
      t.belongs_to :schools

      t.timestamps
    end
  end
end
