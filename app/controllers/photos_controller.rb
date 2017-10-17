class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def show
    @photos = Photo.all
    @photo = Photo.new
  end

  def destroy
    @photo = Photo.find(params[:id])
    if(@photo.destroy)
      redirect_to photo_path
    else

    end
  end

  def create

    @photo = Photo.new(photo_params)
    @photo.save
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end

end
