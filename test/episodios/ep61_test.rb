require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep61_the_slaughter_of_anbar_s_thieves'
class Ep61Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp61.new
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
