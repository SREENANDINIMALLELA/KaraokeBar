require("minitest/autorun")
require("minitest/rg")
require_relative("../Room.rb")
require_relative("../Song.rb")
require_relative("../Guest.rb")

class TestRoom< MiniTest::Test
  def setup()
    @song1 = Song.new("love you ","5 guys","devisri","Romantic music")
    @song2 = Song.new("chinna dana","ramulamma","kavi","Rock music" )
    @song3 = Song.new("rock and roll","rangasthala","teja","Melody music")
    @song4 = Song.new("you are my","5 guys","devisri","Romantic music")
    @song5 = Song.new("dhruva","charan","kavi", "Rock music")
    @song6 = Song.new("vinara vinara","rangasthala","teja","Melody music")
    @all_songs= [@song1 , @song2 , @song3,@song4,@song5,@song6 ]
    @room1= Room.new("Melody lovers", 2 ,50)
    @room2= Room.new("romantic lovers", 7 ,70)
    @room3= Room.new("rocking rock lovers", 3 ,100)
    @rooms =[@room1 , @room2,@room3]
    @guest1= Guest.new( " Sree" , 100 , "love you" , "Melody lovers")
  end

  def test_add_songs_to_room()
    assert_equal(2 , @room1.add_songs_to_room(@all_songs , "Melody music"))
    assert_equal(2 , @room2.add_songs_to_room(@all_songs , "Romantic music"))
    assert_equal(2 , @room3.add_songs_to_room(@all_songs, "Rock music"))
     assert_equal(["rock and roll", "vinara vinara"],@room1.title_of_songs())
    end

  # def test_reduce_space_availability()
  #   assert_equal(1 , @room1.reduce_space_availability())
  # end
  # def test_add_guest_to_room()
  #   assert_equal(1 ,@room1.guest_checkin(@guest1))
  #    assert_equal(50 , @room1.revenue())
  #      assert_equal(1 , @room1.space_availability)
  # end
end
