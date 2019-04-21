class Course < ApplicationRecord
    #has_many :attendance
    
    $bool = false
    
    def setAttendance
        @attendance = 0
        write_attribute(:attendance, @attendance)
    end
    
    def getAttendance
        @attendance = read_attribute(:attendance)
    end
    
    def updateAttendance
        @attendance = read_attribute(:attendance) + 1
        write_attribute(:attendance, @attendance)
        save
    end
    
    def setTardies
        @tardies = 0
        write_attribute(:tardies, @tardies)
    end
    
    def getTardies
        @tardies = read_attribute(:tardies)
    end
    
    def updateTardies
        @tardies = read_attribute(:tardies) + 1
        write_attribute(:tardies, @tardies)
        save
    end
    
    def setAbsences
        @absences = 0
        write_attribute(:absences, @absences)
    end
    
    def getAbsences
        @absences = read_attribute(:absences)
    end
    
    def updateAbsences
        @absences = read_attribute(:absences) + 1
        write_attribute(:absences, @absences)
        save
    end
    
    validates :name, presence: true, length: { minimum: 5 }
end
