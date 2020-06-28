Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :steps # this will enable me to access the steps resources withOUT going through goals
      resources :goals do
        resources :steps # this enables me to access the steps resources THROUGH goals.
      end
    end
  end
end

#fetch('http://localhost:3000/api/v1/steps')









# Rails.application.routes.draw do
#   namespace :api do
#     namespace :v1 do
#       resources :steps
#       resources :goals
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#     end
#   end
# end
