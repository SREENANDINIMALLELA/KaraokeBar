class Room
  attr_reader :type , :spaces_available , :entry_fee , :songs , :guests  , :revenue
  def initialize( type , spaces_available , entry_fee)
    @type =  type
    @spaces_available = spaces_available
    @entry_fee=entry_fee
    @guests=[]
    @songs = []
    @revenue= 0

  end

  #add songs to the rooms by using type
  def add_songs_to_room(songs , song_type)
    for song in songs
      if song.type() == song_type
        @songs.push(song)
      end
    end
    return @songs.length()
  end

#adding revenue to the room
  def add_revenue(entry_fee)
    @revenue += entry_fee
    return @revenue
  end

  # recusing the spaces_available when new guest checkin
  def reduce_space_availability()
    if @spaces_available == 0
      return @spaces_available =0
    else
      return  @spaces_available -= 1
    end
  end


  #spaces_available increase when guest checkout
  def increase_spaces_available()
  @spaces_available += 1
  end

  def guests_in_room()
    guests.length()
  end
  def title_of_songs()
    return @songs.map{|song| song.title}
  end
  def guests_fav_song_list()
  p  @guests.map{|guest| guest.fav_song}
  end


end
