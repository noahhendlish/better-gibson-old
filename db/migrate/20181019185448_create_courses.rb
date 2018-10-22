class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_num
      t.string :department_id
      t.string :course_code
      t.string :section
      t.string :name
      t.string :location
      t.string :instructor
      t.string :days
      t.string :start_time
      t.string :end_time
      t.string :credits
      t.timestamps null: false
    end
  end
end
