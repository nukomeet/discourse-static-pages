Pages::Engine.routes.draw do
  resource :admin_pages, path: '/admin', constraints: AdminConstraint.new, only: [:index] do
    collection do
      get 'index' => 'admin_pages#index'
    end
  end
end
