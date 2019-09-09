require("minitest/autorun")
require("minitest/rg")
require_relative("../Song.rb")
class TestSongs< MiniTest::Test
  def setup()
    @song1 = Song.new("love you ","5 guys","devisri","Romantic music")
    @song2 = Song.new("chinna dana","ramulamma","kavi","Rock music" )
    @song3 = Song.new("rock and roll","rangasthala","teja","Melody music")
    @song4 = Song.new("you are my","5 guys","devisri"," Romantic music ")
    @song5 = Song.new("dhruva","charan","kavi", "Rock music")
    @song6 = Song.new("rock and roll","rangasthala","teja","Melody music")
    @songs= [@song1 , @song2 , @song3,@song4,@song5,@song6 ]
  end
  def test_songs_in_playlist()
    assert_equal( 6 , @songs.length())
  end
  def test_songs_list_by_type()
    assert_equal("Romantic music" , @song1.type())
  end
end
