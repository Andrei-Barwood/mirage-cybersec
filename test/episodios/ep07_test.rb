require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep07_blood_stained_scrub'
class Ep07Test < Minitest::Test
  def test_evidence_purged
    scrub = AlamutSec::BloodStainedScrub.new
    scrub.purge_evidence!
    assert_equal 0, scrub.ioc_count
  end
end
