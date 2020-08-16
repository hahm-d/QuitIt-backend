Rails.application.routes.draw do
  resources :questions
  resources :quizzes, param: :unique_code
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
