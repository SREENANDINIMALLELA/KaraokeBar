require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests.rb")
require_relative("../Rooms.rb")
class TestGuests< MiniTest::Test
  def setup()
    @guest1= Guest.new( " Sree" , 100 , "love you" , "Melody lovers")
    @guest2= Guest.new( "nand" , 1500 , "chinnadana" , "Melody lovers")
    @guest3= Guest.new( "uday" , 150 , "bujji bujji", "romantic lovers")

  end
  # def test_check_in()
  #   assert_equal( 5 ,   @guest.check_in( @rooms))
  # end
  def 
end
