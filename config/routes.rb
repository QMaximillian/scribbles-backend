Rails.application.routes.draw do
  resources :meeting_ranges, only: [:create, :index]
  resources :meeting_times, only: [:create, :index]
end
