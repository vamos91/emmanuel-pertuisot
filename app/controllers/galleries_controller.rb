class GalleriesController < ApplicationController
  def index
  @galleries = Gallery.all
end

def new
  @gallery = Gallery.new
end

def create
  @gallery = Gallery.new(gallery_params)
  if @gallery.save
    redirect_to galleries_path
  end
end

def show
  find_painting
end

def update
  find_painting
  @painting.update(gallery_params)
  redirect_to gallery_index_path

end

def edit
  find_painting

end

def destroy
  find_painting
  @painting.destroy
  redirect_to gallery_index_path
end


end

private

def gallery_params
    params.require(:gallery).permit(:title, :description, :picture, :picture_cache)
end

def find_painting
  @painting = Gallery.find(params[:id])
end

