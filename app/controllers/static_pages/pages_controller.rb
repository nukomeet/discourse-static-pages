module StaticPages
  class PagesController < ApplicationController
    def show
      page = Page.find(params[:id])
      render_json_dump(page: page)
    end
  end
end
