require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep08_bab_al_sham_bribe'
class Ep08Test < Minitest::Test
  def test_bribe_opens_gate
    gate = AlamutSec::BabAlShamBribe.new
    gate.offer_silver_coin!
    assert_equal :open_unlogged, gate.gate_status
  end
end
