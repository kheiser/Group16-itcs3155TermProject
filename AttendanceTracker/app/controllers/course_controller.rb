class CourseController < ApplicationController
    def new
        @course = Course.new(course_params)
        
        if @course.save
            #do something
        end
    end
    
    def create
        render plain: params[:course].inspect
    end 
    
    def delete
       Course.find(params[:name]).destroy 
    end
    
    def list
        @course = Course.all
    end
    
    def show
        @course = Course.find(params[:name])
    end 
    
    def edit
        @course = Course.find(params[:name])
    end 
    
    
    def course_params
       params.permit(:name, :teacher, :courseID, :registrationID) 
    end
    
end
