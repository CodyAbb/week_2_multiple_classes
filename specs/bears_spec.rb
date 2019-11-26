require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bears')
require_relative('../fish')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish = Fish.new("Trevor")
    @fish2 = Fish.new("Trigger")
  end

  def test_can_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_can_get_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_can_roar
    assert_equal("ROOAAARR", @bear.roar())
  end

  def test_food_in_bear_stomach
    assert_equal(0, @bear.food_count)
  end

  def test_can_eat_fish
    @bear.eat_fish(@fish)
    @bear.eat_fish(@fish2)
    assert_equal(2, @bear.food_count)
  end

end
