Rails.application.routes.draw do
  devise_for :family_members
  root 'home#index'
end
