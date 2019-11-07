Rails.application.routes.draw do

  resources :platforms, :path => '/' do
    resources :projects do
      resources :capture_details
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
