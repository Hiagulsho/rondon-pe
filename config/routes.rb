Rails.application.routes.draw do
  get 'documents/new'

  root "pages#index"
  
  devise_for :users, path: '', path_names: {sign_in: 'entrar', sign_up: 'registrar'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "blog", to: "blogs#blog", as: "blog"
get "blog/novo", to: "blogs#new", as: "new_blog"
get "blog/:blog_id", to: "blogs#show", as: "show_blog"
post "blog/criar", to: "blogs#create", as: "create_blog"

get "projetos", to: "pages#projetos", as: "projetos"

get "sobre", to: "pages#sobre", as: "sobre"

get "certificados", to: "documents#certificados", as: "certificados_document"
get "certificados/:document_id", to: "documents#show", as: "show_document"
get "certificados/novo", to: "documents#new", as: "new_document"
post "certificados/enviar", to: "documents#create", as: "create_document"

  get "doar", to: "pages#doar", as: "doar"
  get "doar/fisica", to: "pages#fisica", as: "doar_fisica"
  get "doar/fisica/unica/valores", to: "pages#valores_unica", as: "doar_fisica_unica_valores"
  get "doar/fisica/mensal/valores", to: "pages#valores_mensal", as: "doar_fisica_mensal_valores"

get "*inexistente", to: "pages#inexistente"

end
