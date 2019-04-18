class Course < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5 }
    has_one :attendance
end
