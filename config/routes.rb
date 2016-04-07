Rails.application.routes.draw do
  devise_for :users

  resources :forum_threads do
    resources :forum_posts, moduel: :forum_threads
  end

  root to: "forum_threads#index"
end
