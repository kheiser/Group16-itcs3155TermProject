class Student < ApplicationRecord
    has_many :Course
    has_one  :User
end
