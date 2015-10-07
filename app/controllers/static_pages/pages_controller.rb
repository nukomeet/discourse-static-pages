module StaticPages
  class PagesController < ApplicationController
    requires_plugin 'static-pages'

    def show
      page = Page.find(params[:id])
      render_json_dump(page: page)
    end
  end
end
