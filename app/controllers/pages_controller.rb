class PagesController < ApplicationController
  layout "page"
  def show
    render ["pages", request.path].join
  end
end
