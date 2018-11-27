require('minitest/autorun')
require('minitest/rg')
require_relative("../fish")
require_relative("../bear")
require_relative("../river")

class BearTest < MiniTest::Test

  def test_get_bear_name
    bear = Bear.new("Care", "Fictional")
    assert_equal("Care", bear.name)
  end

  def test_get_bear_type
    bear = Bear.new("Care", "Fictional")
    assert_equal("Fictional", bear.type)
  end

  def test_bear_stomach
    bear = Bear.new("Care", "Fictional")
    assert_equal(0, bear.stomach.length)
  end

  def test_bear_eat_fish
    fish1 = Fish.new("Stand-of")
    fish2 = Fish.new("Stock")
    fish3 = Fish.new("Monk")
    fish = [fish1, fish2, fish3]
    bear = Bear.new("Care", "Fictional")
    river = River.new("Ugie", fish)
    bear.eat_fish(river)
    river.lose_fish(1)
    assert_equal(2,river.fish.length)
    assert_equal(1,bear.stomach.length)
  end

  def test_roar
    bear = Bear.new("Care", "Fictional")
    assert_equal("Rar, I'm a scary bear", bear.roar)
  end
end
