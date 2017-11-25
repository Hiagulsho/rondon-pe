Rails.application.routes.draw do
  root "pages#index"
  devise_for :users, path: '', path_names: {sign_in: 'entrar', sign_up: 'registrar'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "blog", to: "blogs#blog", as: "blog"



  get "doar", to: "pages#doar", as: "doar"
end
