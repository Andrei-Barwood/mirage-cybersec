require 'minitest/autorun'
require_relative '../../lib/alamut_sec/ep10_clandestine_literacy'
class Ep10Test < Minitest::Test
  def test_literacy_and_cleanup
    lit = AlamutSec::ClandestineLiteracy.new
    lit.study_scripts!
    lit.melt_wax_tablet!
    assert_equal 3, lit.languages_mastered.size
    assert_equal :clean_wax, lit.memory_trace
  end
end
