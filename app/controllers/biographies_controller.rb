class BiographiesController < ApplicationController

  def index
    @biographies = Biography.all
  end

  def show
    @biography = Biography.find(params[:id])
  end

  def new
    @biography = Biography.new
  end

  def create
    @biography = Biography.new(biography_params)

    if @biography.save
       redirect_to @biography
    else
       render 'new'
    end
  end

  def edit
    @biography = Biography.find(params[:id])
  end

  def update
    @biography = Biography.find(params[:id])
    if @biography.update_attributes(biography_params)
      redirect_to @biography
    else
      render 'edit'
    end
  end

  def destroy
    @biography = Biography.find(params[:id])
    @biography.destroy

    redirect_to biographies_path
  end

  private

  def biography_params
    biography_params = params.require(:biography).permit(:title, :content, :picture)
  end

end
