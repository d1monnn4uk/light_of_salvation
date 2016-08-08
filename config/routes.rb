Rails.application.routes.draw do
  root  'static_pages#home'
  match '/news',       to: 'static_pages#news',       via: 'get'
  match '/about',      to: 'static_pages#about_us',   via: 'get'
  match '/contact',    to: 'static_pages#contact',    via: 'get'
  match '/history',    to: 'static_pages#history',    via: 'get'
  match '/foto',       to: 'static_pages#foto',       via: 'get'
  match '/video',      to: 'static_pages#video',      via: 'get'
  match '/poetry',     to: 'static_pages#poetry',     via: 'get'
end
