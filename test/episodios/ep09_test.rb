require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep09_house_of_wisdom_infil'
class Ep09Test < Minitest::Test
  def test_infil_success
    infil = AlamutSec::HouseOfWisdomInfil.new
    infil.infiltrate_parchment_depot!
    assert_equal :read_only_archive, infil.access_level
  end
end
