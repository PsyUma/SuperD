Rails.application.routes.draw do
  resources :super_d_users
  resources :users

  get 'dashboard/dashboard'

  get 'cards/cards'

  get 'tables/tables'

  get 'navbar/navbar'

  get 'forgotpassword/forgotpassword'

  get 'register/register'

  get 'login/login'

  get 'home/home'

  get 'blog/blog'

  get 'contact/contact'

  get 'about/about'

  root 'home#home'
  get 'dashboard' => 'dashboard#dashboard'
  get 'cards' => 'cards#cards'
  get 'tables' => 'tables#tables'
  get 'navbar' => 'navbar#navbar'
  get 'blog' => 'blog#blog'
  get 'contact' => 'contact#contact'
  get 'home' => 'home#home'
  get 'about' => 'about#about'
  get 'login' => 'login#login'
  get 'register' => 'register#register'
  get 'forgotpassword' => 'forgotpassword#forgotpassword'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
