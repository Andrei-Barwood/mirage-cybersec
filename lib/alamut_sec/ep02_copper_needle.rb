module AlamutSec
  class CopperNeedleStrike
    attr_accessor :noise_level, :target_status
    def initialize; @noise_level = 0; @target_status = :alive; end
    def strike_with_dagger!
      @noise_level = 45 # Muy ruidoso
      @target_status = :dead_noisy
    end
    def strike_with_copper_needle!
      @noise_level = 1 # Silencio absoluto
      @target_status = :dead_silent
    end
  end
end
