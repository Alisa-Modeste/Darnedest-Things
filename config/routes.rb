# TODO remove search inddex

WisdomCrowd::Application.routes.draw do
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'root#index'

  resource :session, only: [:new, :create, :destroy]

  resources :users do
    resources :answers, :questions, only: :index
  end

  # scope 'self', as: "current" do
#     resource :user, only: :show
#   end

match "/users/current", action: 'getSelf', via: [:get], controller: "users"

  resources :questions do
    resources :answers, only: [:create]
  end

  resources :answers
  resource :search, only: [:create]
  resources :searches, only: [:index]

  resources :tags, only: [:show, :index]


end
