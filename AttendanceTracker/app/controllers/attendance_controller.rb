class AttendanceController < ApplicationController
    def create
        @course = Course.find(params[:course_id])
        @attendance = @course.attendance.create(attendance_params)
        @tardies = @course.attendance.create(attendance_params)
        @absences = @course.attendance.create(attendance_params)
        #redirect_to course_path(@course)
    end
    
    def destroy
       @user = User.find(params[:email])
       @attendance.destroy
       @tardies.destroy
       @absences.destroy
    end
    
    def index
         @attendance = Attendance.all
         @tardies = Attendance.all
         @absences = Attendance.all
    end
    
    private
    def attendance_params
       params.require(:attendance).permit(:student, :absences)
       params.require(:tardies).permit(:student, :absences)
       params.require(:absences).permit(:student, :absences)
    end
end
