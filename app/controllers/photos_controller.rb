class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def index
    @photos = Photo.all
    @photo = Photo.new
  end

  def show
    @photos = Photo.all
    @photo = Photo.new
  end

  def destroy
    @photo = Photo.find(params[:id])
    if(@photo.destroy)
      redirect_to photos_path
    else

    end
  end

  def create
    image_params.each do |image|
      Photo.new(image: image).save
    end
    redirect_to photos_path, notice: "Your photo was uploaded!"
  end

  private

  def image_params
    params[:images].present? ? params.require(:images) : []
  end
end
