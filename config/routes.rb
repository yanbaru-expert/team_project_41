Rails.application.routes.draw do
  root "texts#index"
  devise_for :users
end
