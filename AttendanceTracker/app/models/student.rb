class Student < ApplicationRecord
    has_many :course
    has_one  :User
end
