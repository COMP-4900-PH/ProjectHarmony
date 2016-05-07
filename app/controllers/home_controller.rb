class HomeController < ApplicationController
  def index
    @sailings = Sailing.all
  end
end
