require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep04_harbour_sweep'
class Ep04Test < Minitest::Test
  def setup; @sweep = AlamutSec::HarbourSweep.new; end
  def test_unmasked_scan_triggers_intercept
    @sweep.scan_unmasked!
    assert_equal :intercepted, @sweep.detection_state
  end
  def test_mimicry_disguise_blends_in
    @sweep.apply_flour_carrier_disguise!
    assert_equal :classified_as_background_noise, @sweep.detection_state
  end
end
