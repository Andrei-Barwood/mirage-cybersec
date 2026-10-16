require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep06_round_city_approach'
class Ep06Test < Minitest::Test
  def test_climb_succeeds
    app = AlamutSec::RoundCityApproach.new
    app.climb_during_shift_change!
    assert app.wall_cleared
  end
end
