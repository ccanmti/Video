Rails.application.routes.draw do
  # 顧客用
# URL /customers/sign_in ...
devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, controllers: {
  sessions: "admin/sessions"
}
  scope module: :public do
    root :to =>"homes#top"
    get "about"=>"homes#about"
    resources :movies, only: [:new,:index,:show,:edit,:create,:destroy]
    resources :customers, only: [:index,:show,:edit]
  end
    scope module: :admin do
    resources :genres, only: [:new,:index,:show,:edit,:create,:update,:destroy]
  end

end
