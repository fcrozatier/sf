Rails.application.routes.draw do
  devise_for :admins, skip: [:sessions, :registrations]
  devise_scope :admin do
    get 'login', to: 'devise/sessions#new', as: :new_admin_session
    post 'login', to: 'devise/sessions#create', as: :admin_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_admin_session
    get 'admins/edit', to: 'devise/registrations#edit', as: :edit_admin_registration
    put 'admins', to: 'devise/registrations#update', as: :admin_registration 
  end
  root 'static_pages#index'
end
