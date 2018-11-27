require('minitest/autorun')
require('minitest/rg')
require_relative("../fish")
require_relative("../bear")
require_relative("../river")

class RiverTest < MiniTest::Test

  def test_get_name
    river = River.new("Ugie")
    assert_equal("Ugie", river.name)
  end

  def test_get_fish__Stock
    river = River.new("Ugie")
    fish1 = Fish.new("Stand-of")
    fish2 = Fish.new("Stock")
    fish3 = Fish.new("Monk")
    fish = [fish1, fish2, fish3]
    river = River.new("Ugie", fish)
    assert_equal("Stock", river.fish[1].name)
  end

end
