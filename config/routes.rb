Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  resources :blogs
  post '/complete' => 'blogs#create'
  post '/login' => 'blogs#login'
  get '/:id/edit' => 'blogs#edit'
  patch '/:id' => 'blogs#update'
  get '/new' => 'blogs#new'
  resources :blogs do
    collection do
      # デフォルト形式をcsvに設定
      get :index, defaults: { format: 'csv' }
    end
  end
end
