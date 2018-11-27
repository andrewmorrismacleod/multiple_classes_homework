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

end
