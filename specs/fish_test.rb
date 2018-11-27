require('minitest/autorun')
require('minitest/rg')
require_relative("../fish")
require_relative("../bear")
require_relative("../river")

class FishTest < MiniTest::Test

  def test_get_fish_name
    fish = Fish.new("Hag")
    assert_equal("Hag", fish.name)
  end

end
