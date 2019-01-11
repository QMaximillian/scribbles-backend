Rails.application.routes.draw do
  resources :meeting_ranges, only: [:create, :index]
end
