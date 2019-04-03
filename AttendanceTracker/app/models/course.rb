class Course
  attr_accessor :courseID, :professor

  def initialize(attributes = {})
    @courseID = attributes[:courseID]
    #studentList list of students
    @professor = attributes[:professor]
    #attendnance of students
    
    @email = attributes[:email]
  end

end