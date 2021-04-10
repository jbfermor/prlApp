Rails.application.routes.draw do

	root to: "empresas#index"

  resources :empresas, shallow: true do
		resources :responsables
		resources :centros do
			resources :trabajadors do
				member do
					get "dar_baja"
					get "dar_alta"
				end
			end
		end
  end
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
