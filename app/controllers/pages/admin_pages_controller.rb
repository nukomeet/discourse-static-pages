module Pages
  class AdminPagesController < Admin::AdminController
    requires_plugin 'pages'

    def index
      render_json_dump(pages: Page.all)
    end

    def create
      page = Page.new(page_params)
      page.save!
      render_json_dump(page: page)
    end

    private

    def page_params
      params.require(:page).permit(:title, :body)
    end
  end
end
