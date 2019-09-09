require("minitest/autorun")
require("minitest/rg")
require_relative("../KaraokeBar.rb")
require_relative("../Song.rb")
require_relative("../Guest.rb")
require_relative("../Room.rb")


class TestKaraokeBar< MiniTest::Test
  def setup()
    @song1 = Song.new("I will always for you ","5 guys","devisri","Romantic music")
    @song2 = Song.new("chinna dana","ramulamma","kavi","Rock music" )
    @song3 = Song.new("rock and roll","rangasthala","teja","Melody music")
    @song4 = Song.new("I love you","5 guys","devisri"," Romantic music ")
    @song5 = Song.new("Bohemian Rhapsody,","charan","kavi", "Rock music")
    @song6 = Song.new("vinara vinara","rangasthala","teja","Melody music")
    @songs= [@song1 , @song2 , @song3,@song4,@song5,@song6 ]
    @room1= Room.new("Melody lovers", 2 ,50)
    @room2= Room.new("romantic lovers", 7 ,70)
    @room3= Room.new("rocking rock lovers", 3 ,100)
    @rooms =[@room1 , @room2,@room3]
    @guest1= Guest.new( " Sree" , 100 , "love you","Melody lovers","romantic lovers")
    @guest2= Guest.new( "nand" , 1500 , "I will always for you","romantic lovers","romantic lovers")
    @guest3= Guest.new( "uday" , 150 , "bujji bujji","rocking rock lovers","rocking rock lovers")
    @guest4= Guest.new( "ved" , 150 , "chiinnn bujji", "Melody lovers","rocking rock lovers")
    @guest5= Guest.new( "ved" , 150 , "chiinnn bujji", "Melody lovers","romantic lovers")
    @karaokeBar =KaraokeBar.new(@guests,@rooms,@songs, @drink,1000)
  end
  # added three guests in different rooms and cheked the revenue of the bar , total guests in bar , revenue of the individual room

  def test_add_guests_to_bar()
  @karaokeBar.check_in(@guest1)
  @karaokeBar.check_in(@guest2)
  @karaokeBar.check_in(@guest3)
    assert_equal(3 , @karaokeBar.total_guests_in_rooms())
    assert_equal( 50 , @room1.revenue())
    assert_equal( 70 , @room2.revenue())
    assert_equal( 100 , @room3.revenue())
    assert_equal(1, @room1.spaces_available())
    assert_equal(1220 , @karaokeBar.bar_revenue())
  end
  # checking by adding more guests than the spaces_available of the room

  def test_guests_checkin()
   @karaokeBar.check_in(@guest1)
    @karaokeBar.check_in(@guest2)
    @karaokeBar.check_in(@guest3)
    @karaokeBar.check_in(@guest4)
    @karaokeBar.check_in(@guest5)
    assert_equal(4, @karaokeBar.total_guests_in_rooms())
    assert_equal(100 , @room1.revenue())
    assert_equal( 70 , @room2.revenue())
    assert_equal( 100 , @room3.revenue())
    assert_equal(0 , @room1.spaces_available())
    assert_equal(1270 , @karaokeBar.bar_revenue())
  end
  # checking the checkin and checkout
  def test_checkout()
    @karaokeBar.check_in(@guest1)
    @karaokeBar.check_in(@guest2)
    @karaokeBar.check_in(@guest3)
    @karaokeBar.check_out(@guest1)
    assert_equal(2, @karaokeBar.total_guests_in_rooms())
    assert_equal(50 , @room1.revenue())
    assert_equal(1 , @room1.spaces_available())
    assert_equal(1220 , @karaokeBar.bar_revenue())
  end
  #checking if guest fav song in the playlist 
  def test_guest_fav_song_display()
    @karaokeBar.check_in(@guest1)
    @karaokeBar.check_in(@guest2)
    @room1.add_songs_to_room(@songs , "Melody music")
    assert_equal("whoo!"  , @karaokeBar.if_guest_fav_song_played(@room1))
  end
end
