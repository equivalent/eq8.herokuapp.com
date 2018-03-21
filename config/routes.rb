Eq8::Application.routes.draw do
  resources :blogs, only: [:index, :show]
  resources :talks, only: [:index, :show]
  resources :tils,  only: [:index, :show]

  get "/rabit" => "pages#rabit"

  root 'pages#frontpage'
end
