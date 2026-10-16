require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep95_the_double_walls_of_the_round_city'
class Ep95Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp95.new
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
