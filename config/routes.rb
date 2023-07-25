Rails.application.routes.draw do

 # 管理者用
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    resources :users, only: [:index, :show, :update, :destroy, :edit] do
      resources :recipe_comments, only: [:destroy]
    end
  end

  # ゲストログイン用
  devise_scope :user do
    post "users/guest_sign_in", to: "public/sessions#guest_sign_in"
  end


  # ユーザー用
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: 'public' do
    root 'homes#top'
    get 'homes/about'
    resources :recipes do
      resource :favorites, only: [:create, :destroy]
      resources :recipe_comments, only: [:create, :destroy]
    end
    resources :users do
      member do
        get :favorites
      end
    end
    get '/search', to: 'searches#search'
  end




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
