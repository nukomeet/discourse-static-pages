Pages::Engine.routes.draw do
  resource :admin_pages, path: '/admin', constraints: AdminConstraint.new, only: [:index, :create] do
    collection do
      get 'index' => 'admin_pages#index'
    end
  end
end
