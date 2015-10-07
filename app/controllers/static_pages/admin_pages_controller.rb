module StaticPages
  class AdminPagesController < Admin::AdminController
    requires_plugin 'static-pages'

    def index
      render_json_dump(pages: Page.all)
    end

    def create
      page = Page.new(page_params)
      page.save!
      render_json_dump(page: page)
    end

    def show
      page = Page.find(params[:id])
      render_json_dump(page: page)
    end

    def update
      page = Page.find(params[:id])
      page.update_attributes!(page_params)
      render_json_dump(page: page)
    end

    def destroy
      page = Page.find(params[:id])
      page.delete
      render nothing: true, status: 204
    end

    private

    def page_params
      params.require(:page).permit(:title, :body)
    end
  end
end
