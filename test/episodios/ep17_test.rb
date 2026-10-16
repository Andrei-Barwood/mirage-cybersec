require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep17_escape_across_the_domes'
class Ep17Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp17.new
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
