class PagesController < ApplicationController
  def home
    if user_signed_in?
      if current_user.teacher?
       redirect_to teacher_attendance_index_path
            
        else
        redirect_to student_attendance_index_path
      end
    end
  end
end
