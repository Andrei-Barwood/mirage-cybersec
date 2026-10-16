require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep43_interception_of_the_sos_pigeon'
class Ep43Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp43.new
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
