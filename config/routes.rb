Rails.application.routes.draw do
  devise_for :users

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: "posts#index", as: :authenticated_root
  end

  root to: "pages#landing"
  get "landing" => "pages#landing"
end
