Fcanvas::Application.routes.draw do

  get "wall_posts/create"
  get 'test' => 'page_tab#test'
  get 'children' => 'home#index'
  get 'switch' => 'home#index'
  get 'please_like_this_page' => 'home#please_like_this_page'
  get 'canvas' => 'home#canvas'
  get 'mobile' => 'm#index'
  get 'mobile_gate' => 'm#fan_gate'
  get 'mobile_contents' => 'm#contents'
  get 'mobile_characters' => 'm#characters'
  get 'page_tab' => 'page_tab#index'
  get 'page_tab_gate' => 'page_tab#fan_gate'
  get 'api/miraclehospital/heroes/count' => 'heroes#count'
  get 'count' => 'heroes#count'
  get 'render_test' => 'heroes#render_test'
  get 'sdk' => 'sdk_test#index'
  get 'relay_campaign' => 'relay#index'
  # get 'mobile_relay/:uid' => 'relay#mobile_relay'
  # get 'mobile_relay' => 'relay#mobile_relay'
  get 'tab_relay' => 'relay#tab_relay'
  get 'tab_relay_fangate' => 'relay#tab_fangate'
  get 'tab_relay_fangate/:uid' => 'relay#tab_fangate'
  # get 'mobile_relay_login' => 'relay#mobile_login'
  # get 'mobile_relay_login/:uid' => 'relay#mobile_login'
  # get 'mobile_relay_fangate' => 'relay#mobile_fangate'
  # get 'mobile_relay_fangate/:uid' => 'relay#mobile_fangate'
  get 'api/miraclehospital/heroes/counter' => 'heroes#counter'
  match 'counter' => 'heroes#counter', :via => :get, :as => "counter"
  
  namespace :admin do
    get '/' => 'dashboard#index', ad: 'admin'
    get 'heroes_count' => 'dashboard#heroes_count'
    get 'wall_posts_count' => 'dashboard#wall_posts_count'
    resources :wall_posts
  end
  
  namespace :page_tab do
    resources :wall_posts, only: [:create]
  end

  namespace :m do
    resources :wall_posts, only: [:create]
  end
  
  namespace :relay do
    get 'mobile/:uid' => 'mobile#index'# , as: "mobile_relay_id"
    get 'mobile' => 'mobile#index'# , as: "mobile_relay"
    get 'mobile_login' => 'mobile#login'# , as: "mobile_relay_login"
    get 'mobile_login/:uid' => 'mobile#login'# , as: "mobile_relay_login_id"
    get 'mobile_fangate' => 'mobile#fangate'# , as: "mobile_relay_fangate"
    get 'mobile_fangate/:uid' => 'mobile#fangate'# , as: "mobile_relay_fangate_id"
    get 'check_like' => 'mobile#check_like'
  end

  devise_for :manto_users, controllers: { :omniauth_callbacks => "omniauth_callbacks" } do
  end
  
  resources :manto_users, only: [:create]
  resources :wall_posts, only: [:create]
  resources :users, only: [:create]
  
  root 'page_tab#index'  
end
