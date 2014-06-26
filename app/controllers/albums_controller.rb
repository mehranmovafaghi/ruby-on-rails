class AlbumsController < ApplicationController

layout 'standard'

   def index
@albums = Album.all
   end

   def show
@album = Album.find(params[:id])
   end

   def new
@album = Album.new
   end
  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:success] = "Welcome!"
      redirect_to @album
    else
      render 'new'
    end
  end

  private

    def album_params
      params.require(:album).permit(:title)
    end

   def edit
@album = Album.find(params[:id])
   end

   def update
@album = Album.find(params[:id])
if @album .update_attributes(params[:id])
end
   end

  def destroy
#@album = Album.find(params[:id]).destroy
@album = Album.find(album_params).destroy
  redirect_to album_path
  end
  private

    def album_params
      params.require(:album).permit(:title)
    end
end

