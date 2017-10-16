class PhotosController < ApplicationController

  def show
    @photos = Photo.all
  end

end
