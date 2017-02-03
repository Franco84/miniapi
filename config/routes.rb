Rails.application.routes.draw do
  resources :champion_roles
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do
      resources :champions
      resources :roles
    end
  end


end
