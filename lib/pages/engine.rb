module Pages
  class Engine < ::Rails::Engine
    isolate_namespace Pages

    config.after_initialize do
      Discourse::Application.routes.append do
        mount Pages::Engine, at: '/pages'
      end
    end
  end
end
