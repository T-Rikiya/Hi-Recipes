Rails.application.routes.draw do

  # ユーザー用
  # URL /users/sign_in ...
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  scope module: 'public' do
    root 'homes#top'
    get 'homes/about'
    get 'favorites/index'
    resources :recipes do
      resources :comments, only: [:create]
    end
    resources :users
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
