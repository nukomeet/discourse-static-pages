module StaticPages
  class Engine < ::Rails::Engine
    isolate_namespace StaticPages

    config.after_initialize do
      Discourse::Application.routes.append do
        mount StaticPages::Engine, at: '/pages'
      end
    end
  end
end
