Rails.application.routes.draw do
  get "profile/home"
  get "profile/about"
  get "profile/register"
  get "profile/login"
  get "profile/assignment"
  get "profile/course"
  get "profile/course_detail"
  get "profile/dashboard"
  get "profile/grade"
  get "profile/lecture"
  get "profile/list"
  get "profile/logout"
  get "profile/setting"
  get "profile/notification"
  get "profile/progress"
  get "profile/quiz"
  get "profile/attendance"
  get "home/index"
  get "home/dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
