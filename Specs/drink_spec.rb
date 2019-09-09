require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink.rb")


class TestDrink< MiniTest::Test
  def setup()
    @drink = Drink.new("Beer",20 ,2 )
  end
  def test_name()
    assert_equal("Beer", @drink.name())
  end
  def test_price()
    assert_equal(20, @drink.price())
  end
  def test_alcohol_level()
    assert_equal(2, @drink.alcohol_level())
  end
end
