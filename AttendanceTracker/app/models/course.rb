class Course < ApplicationRecord
    #has_many :attendance
    #attr_accessor :name, :attendance
    validates :name, presence: true, length: { minimum: 5 }
    
    
    
end
