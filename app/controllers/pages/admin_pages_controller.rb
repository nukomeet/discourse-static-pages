module Pages
  class AdminPagesController < Admin::AdminController
    requires_plugin 'pages'

    def index
      render_json_dump(pages: Page.all)
    end
  end
end
