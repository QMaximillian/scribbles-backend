Rails.application.routes.draw do
  resources :meeting_ranges, only: [:show, :create, :index, :update]
  resources :meeting_times, only: [:create, :index]
  resources :users, only: [:create, :index, :show]
  resources :invitations, only: [:create]
end
