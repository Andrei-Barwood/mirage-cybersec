require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep05_karkh_slums'
class Ep05Test < Minitest::Test
  def test_honeypot_diverts_threat
    slums = AlamutSec::KarkhSlums.new
    slums.deploy_honeypot_decoy!
    assert slums.pursuers_diverted
  end
end
