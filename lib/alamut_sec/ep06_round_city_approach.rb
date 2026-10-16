module AlamutSec
  class RoundCityApproach
    attr_accessor :wall_cleared
    def initialize; @wall_cleared = false; end
    def climb_during_shift_change!; @wall_cleared = true; end
  end
end
