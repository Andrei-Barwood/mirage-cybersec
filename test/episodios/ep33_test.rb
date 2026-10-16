require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep33_dunya_the_osint_courtesan'
class Ep33Test < Minitest::Test
  def setup
    @op = AlamutSec::AlamutOp33.new
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
