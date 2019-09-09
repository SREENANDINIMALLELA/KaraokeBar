class Guest
  attr_reader :name , :wallet,:fav_song , :first_intrest_in,:second_intrest_in
  def initialize( name  , wallet , fav_song, first_intrest_in,second_intrest_in)
    @name = name
    @wallet = wallet
    @fav_song=fav_song
    @first_intrest_in=first_intrest_in
    @second_intrest_in= second_intrest_in
  end

  # def check_in(rooms)
  #   rooms_left= rooms.rooms_available()
  #   if rooms_left != 0
  #     rooms_left -= 1
  #   end
  # end
end
