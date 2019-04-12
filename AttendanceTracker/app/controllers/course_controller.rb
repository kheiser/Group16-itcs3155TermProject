class CourseController < ApplicationController
    def new
        @course = Course.new
       
    end
    
    def create
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
       params.require(:course).permit(:name, :courseID, :registrationID) 
    end
    
end
