Rails.application.routes.draw do
  get 'courses/index' => "courses#index"
  get 'courses/regist' => "courses#regist"
  get 'courses/showDetail' => "courses#showDetail"
  get 'courses/edit' => "courses#edit"

  get 'reservations/status' => "reservations#status"
  get 'reservations/regist' => "reservations#regist"
  get 'reservations/showDetail' => "reservations#showDetail"

  get 'users/signup' => "users#signup"
  post 'users/create' => "users#create"
  get 'users/search' => "users#search"
  get 'users/showDetail' => "users#showDetail"
  get 'users/edit' => "users#edit"

  get '/' => "home#top"
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
