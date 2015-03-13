class SongsController <ApplicationController

  def index
    @songs = Song.all    
  end

  def show
    @song = Song.find_by(id: params["id"])
  end

#  def new
 #   @song = Song.new
#  end

#  def create
 #   song_params = params.require(:song).permit!
  #    @song = Song.create(song_params)
   # if @song.valid?
    #  redirect_to songs_path
    #else
     # render text: "FAIL"
   # end
#  end

#  def edit
 #   @song = Song.find_by(id: params["id"])
#  end

#  def update
 #   song_params = params.require(:song).permit!
  #  @song = Song.find_by(id: params["id"])
   # @song.update(song_params)
    #redirect_to songs_path
#  end

#  def destroy
 #   @song = Song.find_by(id: params["id"])
  #  @song.destroy
   # redirect_to songs_path
 # end
end

