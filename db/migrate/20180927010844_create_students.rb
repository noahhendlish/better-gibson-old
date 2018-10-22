class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :major
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :student_id
      t.string :grad_year
      t.string :credits_taken
      t.timestamps null: false
    end
  end
end
