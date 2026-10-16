require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep98_zero_day_infiltration_in_wasif_s_fort'
class Ep98Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp98.new
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
