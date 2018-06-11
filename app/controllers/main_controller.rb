class MainController < ApplicationController
  def index
    @heading = Heading.find_by_home_url(request.original_url)
  end
end
