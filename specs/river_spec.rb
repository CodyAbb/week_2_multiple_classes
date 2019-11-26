require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../river')


class RiverTest < Minitest::Test

  def setup
    @river = River.new("Amazon")
  end


  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_check_fish_in_river
    assert_equal(0, @river.fish_count)
  end
end
