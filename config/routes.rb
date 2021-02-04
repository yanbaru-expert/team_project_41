Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
=======
>>>>>>> 84dfd58ed9350fc0d340362d4667a58047fde1a4
  root "texts#index"
  devise_for :users
end
