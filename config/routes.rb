Rails.application.routes.draw do
  devise_for :users,  controllers: { omniauth_callbacks: 'callbacks' }
  root  'home#index'
  get 'license/index'

  devise_scope :user do
    delete 'destroy_user_session' => 'callbacks#destroy'
  end
end
