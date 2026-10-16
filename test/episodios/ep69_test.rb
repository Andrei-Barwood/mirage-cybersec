require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep69_severing_basim_s_ring_finger'
class Ep69Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp69.new
  end
  def test_threat_is_active_initially
    assert_equal :threat_active, @op.state
  end
  def test_countermeasure_secures_the_node
    @op.deploy_creed_countermeasure!
    assert_equal :secured, @op.state
    assert @op.countermeasure_applied
  end
end
