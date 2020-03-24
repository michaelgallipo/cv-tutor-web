Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do

    get "subjects" => "subjects#index"
    get "subjects/:id" => "subjects#show"

    get "tutors" => "tutors#index"
    get "tutors/:id" => "tutors#show"
    post "tutors" => "tutors#create"
    patch "tutors/:id" => "tutors#update"
    delete "tutors/:id" => "tutors#destroy"

    post "sessions" => "sessions#create"

  end
end
