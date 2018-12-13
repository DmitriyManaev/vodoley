Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'home#index'
  resources :events, only: [:show, :index], param: :slug
  resources :employees, only: [:index, :show], param: :slug
  resources :about, only: :index
  resources :contacts, only: :index

  devise_for :admin, skip: :registrations, controllers: {
    sessions: 'admin/sessions'
  }

  devise_scope :admin do
    get 'admin_sign_out', to: 'admin/sessions#destroy'
  end

  namespace :admin do
    root to: 'dashboard#index'

    resources :events
    resources :employees
    resources :dashboard, only: :index
  end
end
