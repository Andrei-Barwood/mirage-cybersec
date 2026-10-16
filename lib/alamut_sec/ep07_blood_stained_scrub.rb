module AlamutSec
  class BloodStainedScrub
    attr_accessor :ioc_count
    def initialize; @ioc_count = 12; end
    def purge_evidence!
      @ioc_count = 0
    end
  end
end
