class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.text :name
      t.text :courseID
      t.text :registrationID

      t.timestamps
    end
  end
end
