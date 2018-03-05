Rails.application.routes.draw do #ruby
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :authors, only: [:index, :show]
      resources :books, only: [:index, :show]
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :books, only: [:index, :show]
  #   end
  # end



end
