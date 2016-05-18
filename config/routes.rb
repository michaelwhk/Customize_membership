Rails.application.routes.draw do
  get 'membership/orientalqueens'
  get 'membership/silver'
  get 'membership/gold'
  get 'membership/platinum'

  mount Payola::Engine => '/payola', as: :payola
  root to: 'visitors#index'
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => { :registrations => 'registrations'}
  devise_scope :user do
    put 'change_plan', :to => 'registrations#change_plan'
  end
  resources :users
end
