class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #attr_accessible :teacher
 
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
       #  belongs_to :teacher, -> { where User.teacher?}
       #   belongs_to :student, -> { where.not User.teacher?}
       
       
    
end
