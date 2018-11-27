require('minitest/autorun')
require('minitest/rg')
require_relative("../fish")
require_relative("../bear")
require_relative("../river")

class BearTest < MiniTest::Test

  def test_get_bear_name
    bear = Bear.new("Care")
    assert_equal("Care", bear.name)

  end

end
