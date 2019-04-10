class AttendanceController < ApplicationController
    
    def create
        @user = User.find(params[:email])
        @attendance = Attendance.new
    end
    
    def destroy
       @user = User.find(params[:email])
       @attendance.destroy
    end
end
