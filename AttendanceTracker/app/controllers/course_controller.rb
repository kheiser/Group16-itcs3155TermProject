class CourseController < ApplicationController
    def new
        @course = Course.new
    end
    
    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to @course
        else
            render 'new'
        end
        
    end

    def destroy
       @course = Course.find(params[:id])
       @course.destroy
       
       redirect_to course_index_path
    end
    
    def index
        @course = Course.all
        #@attendance = Attendance.all
    end
    
    def show
        
        @course = Course.find(params[:id])
        
        if (@course.getAttendance == nil)
            @course.setAttendance
        else
            @course.getAttendance
        end
        
    end 
    
    def edit
        @course = Course.find(params[:id])
    end 
    
    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            redirect_to @course
        else
            render 'edit'
        end
    end
end

private
    def course_params
       params.require(:course).permit(:name, :teacher, :courseID, :registrationID, :attendance) 
    end
    
