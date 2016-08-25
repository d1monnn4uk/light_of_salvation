Rails.application.routes.draw do
  resources :news
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root  'static_pages#home'
  match '/signup',     to: 'users#new',               via: 'get'
  match '/signin',     to: 'sessions#new',            via: 'get'
  match '/signout',    to: 'sessions#destroy',        via: 'delete'

  match '/ournews',    to: 'news#ournews',            via: 'get'
  match '/uanews',     to: 'news#uanews',             via: 'get'
  match '/worldnews',  to: 'news#worldnews',          via: 'get'

  match '/contact',    to: 'static_pages#contact',    via: 'get'
  match '/history',    to: 'static_pages#history',    via: 'get'
  match '/foto',       to: 'static_pages#foto',       via: 'get'
  match '/video',      to: 'static_pages#video',      via: 'get'
  match '/poetry',     to: 'static_pages#poetry',     via: 'get'

  match '/goals',      to: 'static_pages#goals',      via: 'get'
  match '/worship',    to: 'static_pages#worship',    via: 'get'
  match '/ministers',  to: 'static_pages#ministers',  via: 'get'

  get "/content",      to: 'content#download'
end
