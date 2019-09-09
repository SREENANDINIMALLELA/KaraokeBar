require("minitest/autorun")
require("minitest/rg")
require_relative("../Pub.rb")
require_relative("../Food.rb")
require_relative("../Drink.rb")
require_relative("../Customer.rb")

class TestPub< MiniTest::Test
	def setup()
    @vodka = Drink.new("Vodka", 80, 20)
    @gin = Drink.new("Gin", 50, 15)
    @wine = Drink.new("Wine", 40, 10)
    @drinks = [@vodka, @gin, @wine]

    @sandwitch = Food.new("sandwitch" , 4 ,20)
    @chips = Food.new("Chips" , 5 , 10)
    @food = [@sandwitch, @chips]
		
  end

  def test_name()
    assert_equal("Revolution", @pub.name())
  end

  def test_till()
    assert_equal(100, @pub.till())
  end

  def test_drinks_count()
    assert_equal(3, @pub.drinks_count())
  end

  def test_food_count()
    assert_equal(2, @pub.food_count())
  end

  def test_sell_to_customer()
    @pub.sell_to_customer(@gin , @customer.age(), @customer.drunkness())
    assert_equal(3, @pub.drinks_count())
  end
  def test_sell()
    @pub.sell(@gin)
    assert_equal(2, @pub.drinks_count())
  end
  def test_food_sell()
    @pub.sell(@gin)
    assert_equal(2, @pub.food_count())
  end

end
