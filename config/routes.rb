Pollster::Application.routes.draw do
  root to: 'polls#index'
  resources :polls
  match '/:slug' => "polls#show"
end
