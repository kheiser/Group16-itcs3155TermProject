class ApplicationController < ActionController::Base
    private
    def after_sign_in_path_for(resource)
        if current_user.teacher?
        teacher_attendance_index_path
            
        else
         student_attendance_index_path
        end
     
    end
end
