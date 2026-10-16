require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep01_harbour_servitude'
class Ep01Test < Minitest::Test
  def setup; @node = AlamutSec::HarbourServitude.new; end
  def test_brute_force_triggers_alarm
    @node.attempt_brute_force!
    assert_equal :alarm_raised, @node.alarm_state
  end
  def test_silent_cloning_enables_safe_vault_access
    @node.clone_key_in_clay!
    @node.infiltrate_vault!
    assert_equal :silent_success, @node.alarm_state
    assert @node.vault_accessed
  end
end
