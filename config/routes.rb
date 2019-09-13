Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'courses/index'
    end
  end
  namespace :api do
    namespace :v1 do
      get :categories, to: 'categories#index'
      get :courses, to: 'courses#index'
      get :verticals, to: 'verticals#index'
    end
  end
end
