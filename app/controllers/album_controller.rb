class AlbumController < ApplicationController
	def index
		@album = Album.all
	end

	def show
		@artist = Artist.find(params[:artist_id])
		@album = @artist.albums.find(params[:id])
		@size = @album.size
	end
end