class TeacherAttendanceController < ApplicationController
    def new
        @teacher = Teacher.new
    end 
    
    def create
        render plain: params[:teacher].inspect
    end
    
    def delete
        Teacher.find(params[:name]).destroy
    end
    
    def show
        @teacher = Teacher.find(params[:name])
    end
    
    def edit
        @teacher = Teacher.find(params[:name])
    end 
end
