class AttendanceController < ApplicationController
    
    def create
        @course = Course.find(params[:name])
        @attendance = @course.attendance.create(attendance_params)
        redirect_to course_path(@course)
    end
    
    def destroy
       @user = User.find(params[:email])
       @attendance.destroy
    end
    
    def index
    @attendance = Attendance.all
    end
    
    private
    def attendance_params
       params.require(:attendance).permit(:student, :absences) 
    end
end
