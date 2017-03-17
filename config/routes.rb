Rails.application.routes.draw do
  resources :payment_ways
  resources :memberships
  resources :detail_purchase_receipts
  resources :purchase_receipts
  resources :details
  resources :providers
  resources :outflows
  resources :discounts
  resources :societies
  resources :receipts
  resources :clients
  resources :categories
  resources :products
  devise_for :users, :controllers => { :registrations => "user/registrations" }
    root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
