Rails.application.routes.draw do

	get '/songs', to: 'song#index'

	resources :artists do
		resources :album do
			resources :song, only: [:show]
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
