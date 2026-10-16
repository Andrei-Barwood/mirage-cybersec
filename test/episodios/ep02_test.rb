require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep02_copper_needle'
class Ep02Test < Minitest::Test
  def setup; @sim = AlamutSec::CopperNeedleStrike.new; end
  def test_dagger_strike_is_detected
    @sim.strike_with_dagger!
    assert @sim.noise_level > 10
  end
  def test_copper_needle_is_undetectable
    @sim.strike_with_copper_needle!
    assert_equal :dead_silent, @sim.target_status
    assert @sim.noise_level <= 2
  end
end
