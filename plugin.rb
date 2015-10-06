# name: pages
# about: Static pages plugin for Discourse
# version: 0.0.1
# authors: Nukomeet

enabled_site_setting :pages_enabled

add_admin_route 'pages.title', 'pages'

Discourse::Application.routes.append do
  get '/admin/plugins/pages' => 'admin/plugins#index', constraints: AdminConstraint.new
  get '/admin/plugins/pages/new' => 'admin/plugins#index', constraints: AdminConstraint.new
end

load File.expand_path('../lib/pages.rb', __FILE__)
