require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../fish')


class FishTest < Minitest::Test

  def setup
    @fish = Fish.new("Trout")
  end

  def test_get_fish_name
    assert_equal("Trout", @fish.name)
  end

end
