Fcanvas::Application.routes.draw do
  get "wall_posts/create"
  get 'please_like_this_page' => 'home#please_like_this_page'
  get 'canvas' => 'home#canvas'
  get 'mobile' => 'm#index'
  get 'mobile_gate' => 'm#fan_gate'
  get 'mobile_contents' => 'm#contents'
  get 'page_tab' => 'page_tab#index'
  get 'page_tab_gate' => 'page_tab#fan_gate'

  namespace :page_tab do
    resources :wall_posts, only: [:create]
  end

  namespace :m do
    resources :wall_posts, only: [:create]
  end

  resources :wall_posts, only: [:create]
  root 'home#index'  
end
