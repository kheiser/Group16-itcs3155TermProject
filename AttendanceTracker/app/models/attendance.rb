class Attendance
  attr_accessor :student, :absences

  def initialize(attributes = {})
    @student = attributes[:student]
    
    @absences = attributes[:absences]
  end

end