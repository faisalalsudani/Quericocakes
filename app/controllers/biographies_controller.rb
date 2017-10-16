class BiographiesController < ApplicationController

  def index
    @biographies = Biography.all
  end

end
