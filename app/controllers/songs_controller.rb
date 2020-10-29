class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def create(song_params)
    @song = Song.create(song_params)
    redirect_to songs_path
  end

  private
    def song_params
      params.permit(:title, :released, :release_year, :artist_name, :genre)
    end
end
