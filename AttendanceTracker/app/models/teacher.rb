class Teacher < ApplicationRecord
    has_many :course
    has_one :user
    has_many :student
end
