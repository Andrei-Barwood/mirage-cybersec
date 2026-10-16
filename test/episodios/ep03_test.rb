require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep03_tigris_canals'
class Ep03Test < Minitest::Test
  def setup; @route = AlamutSec::TigrisCanals.new; end
  def test_street_escape_fails_tracking_evasion
    @route.escape_via_streets!
    assert @route.tracking_signal > 50
  end
  def test_subterranean_canals_zeroizes_tracking
    @route.escape_via_subterranean_canals!
    assert_equal 0, @route.tracking_signal
    assert_equal :canals, @route.escape_route
  end
end
