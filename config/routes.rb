Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do

    get "subjects" => "subjects#index"
    get "subject/:id" => "subjects#show"
    
  end
end
