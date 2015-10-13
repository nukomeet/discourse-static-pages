StaticPages::Engine.routes.draw do

  # TODO: Why doesn't resource work as expected here?
  # Does Rails not know it's a model resource since the
  # model is namespaced?

  resource :admin_pages, path: '/admin/pages', constraints: AdminConstraint.new, only: [] do
    collection do
      get '' => 'admin_pages#index'
      post '' => 'admin_pages#create'
    end

    member do
      get ':id' => 'admin_pages#show'
      patch ':id' => 'admin_pages#update'
      delete ':id' => 'admin_pages#destroy'
    end
  end

  class PagesEnabledConstraint
    def matches?(request)
      SiteSetting.static_pages_enabled
    end
  end

  resource :pages, path: '', constraints: PagesEnabledConstraint.new, only: [] do
    collection do
      get '' => 'pages#index'
    end

    member do
      get ':id' => 'pages#show'
    end
  end
end
