class CreateCourses < ActiveRecord::Migration[5.2]
 
 #Courses will be assigned a teacher name. Teachers will be able
 #to find their students by finding the teachers course, then
 #doing a loop to find each student who has this course, which
 #can be printed. 
 
  def change
    create_table :courses do |t|
      t.text :name
      t.text :teacher
      t.text :courseID
      t.integer :attendance
      t.integer :tardies
      t.integer :absences
      t.text :registrationID
      

      t.timestamps
    end
  end
end
