require 'rails_helper.rb'

feature "Student adds a course" do
    scenario "Student successfully navigates to new courses page from the course listing page" do
        visit course_index_path
        expect(page).to have_content("Listing Courses")
        click_link "Add Course"
        expect(page).to have_content("New Course Enrollment")
        expect(page).to have_field("Course Name")
    end  
    
    scenario "Student successfully creates a new course" do
        visit new_course_path
        expect(page).to have_content("New Course Enrollment")
        fill_in "Course Name", with: "Testing Course Name"
        click_button "Enroll"
        expect(page).to have_content("Testing Course Name")
    end
end