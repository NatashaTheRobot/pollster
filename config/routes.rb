Pollster::Application.routes.draw do
  root to: 'polls#index'
  match '/polls/:admin_slug/edit' => "polls#edit"
  resources :polls
  match '/:slug' => "polls#show"
end
