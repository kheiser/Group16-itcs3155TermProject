class Course < ApplicationRecord
    #has_many :attendance
    
    $bool = false
    
    def setAttendance
        @attendance = 0
        write_attribute(:attendance, @attendance)
    end
    
    def getAttendance
        @attribute = read_attribute(:attendance)
    end
    
    
    def updateAttendance
        @attendance = read_attribute(:attendance) + 1
        write_attribute(:attendance, @attendance)
        save
    end
    
    validates :name, presence: true, length: { minimum: 5 }
end
