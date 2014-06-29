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

   def edit
@album = Album.find(params[:id])
   end

   def update
     @album = Album.find(params[:id])
     @album.update_attributes(album_params)
     redirect_to 'http://0.0.0.0:3000/albums'
     #if @album.update_attributes(params[:id])
     #   redirect_to album_path
     #else
     #   render 'edit'
     #end
   end

  def destroy
    @album = Album.find(params[:id]).destroy
#    @album.destroy
    redirect_to 'http://0.0.0.0:3000/albums'
  end

  private

    def album_params
      params.require(:album).permit(:title)
    end
end

