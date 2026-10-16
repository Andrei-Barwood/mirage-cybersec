require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep78_the_memory_corridor_of_al_ghul'
class Ep78Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp78.new
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
