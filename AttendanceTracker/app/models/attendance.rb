class Attendance < ApplicationRecord
  belongs_to :course
  
  def initialize(attributes = {})
    @student = attributes[:student]
    
    @absences = attributes[:absences]
  end
  
end
