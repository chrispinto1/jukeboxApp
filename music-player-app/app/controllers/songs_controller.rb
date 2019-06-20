class SongsController < ApplicationController

  before_action :authorized?, only: [:index]

  def index
    @songs = Song.all
    input = params[:search]
    if input
      @songs = Song.all.select {|song| song.title.include?(input) || song.artist.include?(input)}
      if @songs.size == 0
        flash[:message] = "No songs match the title inputed"
        @songs = Song.all
      end
    else
      @songs = Song.all
    end
  end

  def putsong
    song = Song.find(params[:song_id])
    user = User.find(session[:user_id])
    user.songs << song
    redirect_to "/songs"
  end

end
