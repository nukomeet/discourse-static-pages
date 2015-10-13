module StaticPages
  class PagesController < ApplicationController
    def index
      render_json_dump(pages: Page.all)
    end

    def show
      page = Page.find(params[:id])
      render_json_dump(page: page)
    end
  end
end
