Rails.application.routes.draw do
	
  resources :songs, only: [:index, :show]
  resources :collaborators, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :songs
      resources :collaborators
    end
  end

end
