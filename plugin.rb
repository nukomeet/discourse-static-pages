# name: static-pages
# about: Static pages plugin for Discourse
# version: 0.0.1
# authors: Nukomeet

enabled_site_setting :static_pages_enabled
add_admin_route 'static_pages.pages', 'pages'
register_asset 'stylesheets/static_pages.scss'

Discourse::Application.routes.append do
  get '/admin/plugins/pages' => 'admin/plugins#index', constraints: AdminConstraint.new
  get '/admin/plugins/pages/new' => 'admin/plugins#index', constraints: AdminConstraint.new
  get '/admin/plugins/pages/:id/edit' => 'admin/plugins#index', constraints: AdminConstraint.new
end

load File.expand_path('../lib/pages.rb', __FILE__)
