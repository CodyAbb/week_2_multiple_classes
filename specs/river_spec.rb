require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../river')
require_relative('../bears')
require_relative('../fish')


class RiverTest < Minitest::Test

  def setup
    @river = River.new("Amazon")
    @bear = Bear.new("Greggor", "Brown")
    @fish = Fish.new("Tim")
    @fish2 = Fish.new("Tilly")
  end


  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_check_fish_in_river
    assert_equal(0, @river.fish_count)
  end

  def add_fish_to_river
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_count)
  end

  def test_remove_fish_from_river_to_bear
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.move_fish_from_river(@bear, @fish2)

    assert_equal(1, @river.fish_count)
    assert_equal(1, @bear.food_count)
  end
end
