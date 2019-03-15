class SongController < ApplicationController
	def index
		@song = Song.all		
	end

	def show
		@artist = Artist.find(params[:artist_id])
		@album = @artist.albums.find(params[:album_id])
		@song = @album.songs.find(params[:id])
	end
end