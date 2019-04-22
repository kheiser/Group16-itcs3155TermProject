Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'welcome/index'
  get 'course/updatedAbsences'
  get 'course/updatedAttendances'
  get 'course/updatedTardies'
  
  resources :student_attendance
  resources :teacher_attendance
 
  resources :course do
    resources :attendance
  end
  
  
  
  root 'welcome#index'
  post "course/:id/"    => "course#show"
  post "course/:id/"    => "course#updatedAbsences"
  post "course/:id/"    => "course#updatedAttendances"
  post "course/:id/"    => "course#updatedTardies"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
