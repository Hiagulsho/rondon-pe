Rails.application.routes.draw do
  
  devise_for :users, path: '', path_names: {sign_in: 'entrar', sign_out: 'sair', sign_up: 'registrar'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
