Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'welcome/index'
  
  resources :student_attendance
  resources :teacher_attendance
 
  resources :course do
    resources :attendance
  end
  
  
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
