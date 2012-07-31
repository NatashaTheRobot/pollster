Pollster::Application.routes.draw do
  root to: 'polls#new'
  
  #polls resource
  get '/polls/:admin_slug/edit' => "polls#edit", as: "edit_poll"
  put '/polls/:admin_slug' => "polls#update", as: "update_poll"
  delete '/polls/:admin_slug' => "polls#destroy", as: "delete_poll"
  resources :polls, except: [:edit, :update, :show, :delete] do
    resources :questions
  end
  get '/polls/:slug' => "polls#show", as: "poll"

end
