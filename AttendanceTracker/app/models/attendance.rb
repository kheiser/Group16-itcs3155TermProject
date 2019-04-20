class Attendance < ApplicationRecord
  attr_accessor :student, :absences
  belongs_to :course
  
  def initialize(attributes = {})
    @student = attributes[:student]
    
    @absences = attributes[:absences]
  end
  
end
