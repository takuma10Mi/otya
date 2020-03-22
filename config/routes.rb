Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  resources :blogs
  patch 'blogs/:id'
  resources :blogs do
    collection do
      # デフォルト形式をcsvに設定
      get :index, defaults: { format: 'csv' }
    end
  end
end
