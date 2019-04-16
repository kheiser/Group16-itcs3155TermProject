class StudentAttendanceController < ApplicationController
    def new
       @student = Student.new
    end 
    
    def create
        render plain: params[:student].inspect
    end
    
    def delete
        Student.find(params[:name]).destroy
    end
    
    def show
        @student = Student.find(params[:name])
    end
    
    def edit
        @student = Student.find(params[:name])
    end 
    
    
    
end
