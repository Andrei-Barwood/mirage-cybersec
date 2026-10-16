module AlamutSec
  class HarbourSweep
    attr_accessor :detection_state
    def initialize; @detection_state = :vulnerable; end
    def scan_unmasked!; @detection_state = :intercepted; end
    def apply_flour_carrier_disguise!
      @detection_state = :classified_as_background_noise
    end
  end
end
